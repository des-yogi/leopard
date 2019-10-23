{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--noindex" role="main">
    <div class="container">
      {include 'file:chunks/callback_btn.tpl'}
    </div>
    <div class="article  article--wo-border  career">
      <div class="main-content__header" style="background-image: url([[*header_bg:ne=``:then=`[[*header_bg]]`:else=`[[pdoField? &id=`[[BabelTranslation:default=`[[*parent]]`? &resourceId=`[[*parent]]` &contextKey=`[[*context_key]]`]]` &field=`header_bg`]]`]]);">
        <div class="container">
          {include 'file:chunks/breadcrumbs.tpl'}
          <div class="row">
            <div class="col-1-2">
              <h1 class="main-content__title">[[*longtitle:default=`[[*pagetitle]]`]]</h1>
              <p class="main-content__descr">[[*introtext]]</p>
            </div>
          </div>
        </div>
      </div>
      <div class="main-content__content">
        <div class="container">
          <div class="columns-2">
            [[*content]]
          </div>
        </div>
      </div>
    </div>
    
    <section class="section  section--padding-b  partnership  resume-form">
      <div class="container">
        <h2 class="section__title">[[$langs? &uk=`Надішліть своє резюме` &en=`Send your Resume`]]</h2>
        <div class="row">
          <div class="col-1-1-2  partnership__intro-col">
            <div class="partnership__intro">
              <p>[[$langs? &uk=`Надішліть своє резюме, і ми збережемо його в нашій базі даних, щоб запросити вас на майбутні вакансії` &en=`Send your resume and we will save it in our database to invite you for future vacancies`]]</p>
              <p>[[$langs? &uk=`або надішліть на email` &en=`or send to the following email`]]: <a href="mailto:[[++main_email]]">[[++main_email]]</a></p>
            </div>
          </div>
        </div>
        [[!FormIt?
        &preHooks=`checkSpamTime`
        &hooks=`email,redirect`
        &customValidators=`formit2checkfile`
        &redirectTo=`[[BabelTranslation:default=`14`? &resourceId=`14` &contextKey=`[[*context_key]]`]]`
        &redirectParams=`{ "success":"1" }`
        &emailFrom=`postman@leopard-agri.com`
        &emailTpl=`@FILE chunks/emails/email_tpl.tpl`
        &emailTo=`[[++main_email]]`
        &emailBCC=`des.yogi@ukr.net`
        &emailSubject=`[[$langs? &uk=`Форма резюме з сайту` &en=`Resume form from the site`]] [[++site_name]]`
        &validate=`name:required,tel:required,email:email:required,upload:formit2checkfile,activity:blank`
        &validationErrorMessage=`[[$langs? &uk=`У формі містяться помилки!` &en=`The form contains errors!`]]`
        &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &en=`Message sent successfully!`]]`
        &submitVar=`resumeForm`
        ]]
        <form class="partnership__form" id="resumeForm" action="[[~[[*id]]]]#resumeFormStart" method="post" enctype="multipart/form-data">
          <div class="partnership__form-info">
            <p class="h4">[[$langs? &uk=`Заповніть, будь ласка, форму` &en=`Fill the form, please`]]</p>
            <p class="partnership__form-note">[[$langs? &uk=`Поля, позначені <span style="color:#00bc68">*</span>,
              обов'язкові для заповнення` &en=`Fields marked with <span style="color:#00bc68">*</span> are required`]]!</p>
          </div>
          <div class="row">
            <div class="resume-form__col-fields  resume-form__col-fields--inputs">
              <label class="field-text">
                <span class="field-text__input-wrap">
                  <input id="resumeFormStart" class="field-text__input  field-text__input--required" type="text" name="name" value="[[!+fi.name]]" placeholder="[[$langs? &uk=`Ваше ім'я` &en=`Your name`]]">
                  <span class="field-text__help-text  error">[[!+fi.error.name]]</span>
                </span>
              </label>
              <label class="field-text">
                <span class="field-text__input-wrap">
                  <input class="visually-hidden" type="text" name="activity" value="">
                  <input class="field-text__input  field-text__input--required" type="tel" name="tel" value="[[!+fi.tel]]" placeholder="[[$langs? &uk=`Телефон` &en=`Phone`]]">
                  <span class="field-text__help-text  error">[[!+fi.error.tel]]</span>
                </span>
              </label>
              <label class="field-text">
                <span class="field-text__input-wrap">
                  <input class="field-text__input  field-text__input--required" type="email" name="email" value="[[!+fi.email]]" placeholder="Email">
                  <span class="field-text__help-text  error">[[!+fi.error.email]]</span>
                </span>
              </label>
            </div>
            <div class="resume-form__col-fields  resume-form__col-fields--message">
              <label class="field-text  field-text--message">
                <span class="field-text__input-wrap">
                  <textarea class="field-text__input" name="message" value="[[!+fi.message]]" placeholder="[[$langs? &uk=`Повідомлення` &en=`Message`]]"></textarea>
                  <span class="field-text__help-text  error">[[!+fi.error.message]]</span>
                </span>
              </label>
            </div>
            <div class="resume-form__col-action">
              <p>[[$langs? &uk=`Клікніть, щоб <strong>вибрати</strong> потрібний файл, або просто перетягніть сюди потрібні файли. Підтримувані формати: doc, docx, rtf, txt, pdf <strong>(максимум 20 Мб)</strong>` &en=`Click to <strong>select</strong> the desired file, or just drag and drop the files you need here. Supported formats: doc, docx, rtf, txt, odt, pdf <strong>(20 Mb maximum)</strong>`]]</p>
              <div class="row">
                <div class="resume-form__col-btns">
                  <div class="field-file">
                    <label class="field-file__input-wrap">
                      <input class="field-file__input" type="file" data-multiple-caption="[[$langs? &uk=`Файл` &en=`File`]]: { count }" name="upload" value="[[!+fi.upload]]">
                      <div class="field-file__name-text" data-button-text="[[$langs? &uk=`Виберіть файл` &en=`Select file`]]">
                        <span>0 [[$langs? &uk=`вибрано` &en=`selected`]]</span>
                      </div>
                      <span class="field-text__help-text  error">[[+fi.error.upload]]</span>
                    </label>
                  </div>
                </div>
                <div class="resume-form__col-btns">
                  <div class="field-actions">
                    <input form="resumeForm" class="btn  partnership__submit" type="submit" name="resumeForm" value="[[$langs? &uk=`Надіслати` &en=`Submit`]]">
                  </div>
                </div>
              </div>
              <div class="field-checkbox">
                <label class="field-checkbox__name">
                  <input id="agreement" class="field-checkbox__input" type="checkbox" checked>
                  <span class="field-checkbox__name-text  partnership__agreement-text">[[$langs? &uk=`Даю згоду компанії Leopard Agri-Service, яка опублікувала вакансію для обробки персональних даних, надану мною відповідно до Закону України <a href="https://zakon.rada.gov.ua/rada/show/2297-17" target="_blank" rel="nofollow noopener">«Про захист персональних даних»</a>` &en=`I give consent to Leopard Agri-Service company that has published a vacancy for the processing of personal data provided by me in accordance with the Law of Ukraine <a href="https://zakon.rada.gov.ua/rada/show/2297-17" target="_blank" rel="nofollow noopener">"On Protection of Personal Data"</a>`]]</span>
                </label>
              </div>
            </div>
          </div>
        </form>
      </div>
    </section>
  </main>
{/block}
