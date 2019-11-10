<section class="section  section--padding-b  partnership">
  <div class="container">
    <h2 class="section__title">
      [[pdoField? &id=`[[BabelTranslation:default=`71`? &resourceId=`71` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]
    </h2>
    <div class="row">
      <div class="col-1-2  partnership__intro-col">
        <div class="partnership__intro">
          <p class="h4">[[pdoField? &id=`[[BabelTranslation:default=`71`? &resourceId=`71` &contextKey=`[[*context_key]]`]]` &field=`introtext`]]</p>
          <dix>[[pdoField? &id=`[[BabelTranslation:default=`71`? &resourceId=`71` &contextKey=`[[*context_key]]`]]` &field=`content`]]</dix>
        </div>
      </div>
    </div>
    [[!FormIt?
    &preHooks=`checkSpamTime`
    &hooks=`email,redirect`
    &redirectTo=`[[BabelTranslation:default=`14`? &resourceId=`14` &contextKey=`[[*context_key]]`]]`
    &redirectParams=`{ "success":"1" }`
    &emailFrom=`postman@leopard-agri.com`
    &emailTpl=`@FILE chunks/emails/email_tpl.tpl`
    &emailTo=`[[++main_email]]`
    &emailBCC=`des.yogi@ukr.net`
    &emailSubject=`[[$langs? &uk=`Пропозиція партнерства з сайту` &ru=`Предложение партнерства с сайта` &en=`Partnership offer from the site`]] [[++site_name]]`
    &validate=`name:required,tel:required,email:email:required,activity:blank`
    &validationErrorMessage=`[[$langs? &uk=`У формі містяться помилки!` &ru=`В форме содержатся ошибки!` &en=`The form contains errors!`]]`
    &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!` &en=`Message sent successfully!`]]`
    &submitVar=`partnershipForm`
    ]]
    <form class="partnership__form" id="partnershipForm" action="[[~[[*id]]]]#partnershipFormStart" method="post">
      <div class="partnership__form-info">
        <p class="h4">[[$langs? &uk=`Заповніть, будь ласка, форму` &ru=`Заполните, пожалуйста, форму` &en=`Fill the form, please`]]</p>
        <p class="partnership__form-note">[[$langs?
          &uk=`Поля, позначені <span style="color:#00bc68">*</span>, обов'язкові для заповнення`
          &ru=`Поля, помеченные <span style="color:#00bc68">*</span>, обязательны для заполнения`
          &en=`Fields marked with <span style="color:#00bc68">*</span> are required`]]!</p>
      </div>
      <div class="row">
        <div class="partnership__form-col">
          <label class="field-text">
            <span class="field-text__input-wrap">
              <input id="partnershipFormStart" class="field-text__input  field-text__input--required" type="text" name="name" value="[[!+fi.name]]"
                     placeholder="[[$langs? &uk=`Ваше ім'я` &ru=`Ваше имя` &en=`Your name`]]">
              <span class="field-text__help-text  error">[[!+fi.error.name]]</span>
            </span>
          </label>
          <label class="field-text">
            <span class="field-text__input-wrap">
              <input class="visually-hidden" type="text" name="activity" value="">
              <input class="field-text__input" type="text" name="company" value="[[!+fi.company]]"
                     placeholder="[[$langs? &uk=`Назва компанії` &ru=`Название компании` &en=`Company Name`]]">
              <span class="field-text__help-text  error">[[!+fi.error.company]]</span>
            </span>
          </label>
        </div>
        <div class="partnership__form-col">
          <label class="field-text">
            <span class="field-text__input-wrap">
              <input class="field-text__input  field-text__input--required" type="tel" name="tel" value="[[!+fi.tel]]"
                     placeholder="[[$langs? &uk=`Телефон` &ru=`Телефон` &en=`Phone`]]">
              <span class="field-text__help-text  error">[[!+fi.error.tel]]</span>
            </span>
          </label>
          <label class="field-text">
            <span class="field-text__input-wrap">
              <input class="field-text__input  field-text__input--required" type="email" name="email" value="[[!+fi.email]]"
                     placeholder="Email">
              <span class="field-text__help-text  error">[[!+fi.error.email]]</span>
            </span>
          </label>
        </div>
        <div class="partnership__form-col  partnership__form-col--flex">
          <label class="field-text  field-text--nomargin">
            <span class="field-text__input-wrap">
              <textarea class="field-text__input" name="message" value="[[!+fi.message]]"
                        placeholder="[[$langs? &uk=`Повідомлення` &ru=`Cообщение` &en=`Message`]]"></textarea>
              <span class="field-text__help-text  error">[[!+fi.error.message]]</span>
            </span>
          </label>
        </div>
        <div class="partnership__form-col">
          <div class="field-actions">
            <input form="partnershipForm" class="btn  partnership__submit" type="submit" name="partnershipForm" value="[[$langs? &uk=`Надіслати` &ru=`Отправить` &en=`Submit`]]">
          </div>
          <div class="field-checkbox">
            <label class="field-checkbox__name">
              <input id="agreement" class="field-checkbox__input" type="checkbox" checked>
              <span class="field-checkbox__name-text  partnership__agreement-text">[[$langs? &uk=`Даю згоду на обробку персональних даних` &ru=`Даю согласие на обработку персональных данных` &en=`I consent to the processing of personal data`]]</span>
            </label>
          </div>
        </div>
      </div>
    </form>
  </div>
</section>
