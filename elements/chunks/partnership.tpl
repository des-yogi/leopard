<section class="section  section--padding-b  partnership">
  <div class="container">
    <h2 class="section__title">[[$langs? &uk=`Партнерство` &en=`Partnership`]]</h2>
    <div class="row">
      <div class="col-1-2  partnership__intro-col">
        <div class="partnership__intro">
          <p class="h4">[[$langs? &uk=`Почнемо співпрацю вже сьогодні` &en=`Let's start cooperation today`]]</p>
          <p>[[$langs? &uk=`Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet cras urna, malesuada euismod.
            Vulputate non suspendisse consequat volutpat, tellus. Nisi ac sit lacus, mauris` &en=`Lorem ipsum dolor sit
            amet, consectetur adipiscing elit. Amet cras urna, malesuada euismod. Vulputate non suspendisse consequat
            volutpat, tellus. Nisi ac sit lacus, mauris`]].</p>
        </div>
      </div>
    </div>
    <form class="partnership__form" id="partnershipForm" action="/" method="post">
      <div class="partnership__form-info">
        <p class="h4">[[$langs? &uk=`Заповніть, будь ласка, форму` &en=`Fill the form, please`]]</p>
        <p class="partnership__form-note">[[$langs? &uk=`Поля, позначені <span style="color:#00bc68">*</span>,
          обов'язкові для заповнення` &en=`Fields marked with <span style="color:#00bc68">*</span> are required`]]!</p>
      </div>
      <div class="row">
        <div class="partnership__form-col">
          <label class="field-text">
            <span class="field-text__input-wrap">
              <input class="field-text__input  field-text__input--required" type="text" name="name" value=""
                     placeholder="[[$langs? &uk=`Ваше ім'я` &en=`Your name`]]">
              <span class="field-text__help-text  error"></span>
            </span>
          </label>
          <label class="field-text">
            <span class="field-text__input-wrap">
              <input class="field-text__input" type="text" name="company" value=""
                     placeholder="[[$langs? &uk=`Назва компанії` &en=`Company Name`]]">
              <span class="field-text__help-text  error"></span>
            </span>
          </label>
        </div>
        <div class="partnership__form-col">
          <label class="field-text">
            <span class="field-text__input-wrap">
              <input class="field-text__input  field-text__input--required" type="tel" name="tel" value=""
                     placeholder="[[$langs? &uk=`Телефон` &en=`Phone`]]">
              <span class="field-text__help-text  error"></span>
            </span>
          </label>
          <label class="field-text">
            <span class="field-text__input-wrap">
              <input class="field-text__input  field-text__input--required" type="email" name="email" value=""
                     placeholder="Email">
              <span class="field-text__help-text  error"></span>
            </span>
          </label>
        </div>
        <div class="partnership__form-col  partnership__form-col--flex">
          <label class="field-text  field-text--nomargin">
            <span class="field-text__input-wrap">
              <textarea class="field-text__input" name="message" value=""
                        placeholder="[[$langs? &uk=`Повідомлення` &en=`Message`]]"></textarea>
              <span class="field-text__help-text  error"></span>
            </span>
          </label>
        </div>
        <div class="partnership__form-col">
          <div class="field-actions">
            <input class="btn  partnership__submit" type="submit" name="submit" value="[[$langs? &uk=`Надіслати` &en=`Submit`]]">
          </div>
          <div class="field-checkbox">
            <label class="field-checkbox__name">
              <input id="agreement" class="field-checkbox__input" type="checkbox" checked>
              <span class="field-checkbox__name-text  partnership__agreement-text">[[$langs? &uk=`Даю згоду на обробку персональних даних` &en=`I consent to the processing of personal data`]]</span>
            </label>
          </div>
        </div>
      </div>
    </form>
  </div>
</section>
