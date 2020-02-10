<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="WebApplication2.Review" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <link href="css/review.css" rel="stylesheet" />

    <style type="text/css">

        .blankstar {
            background-image: url(Images/blank_star.png);
            width: 16px;
            height: 16px;
            background-repeat:no-repeat;
        }

        .waitingstar {
            background-image: url(Images/half_star.png);
            width: 16px;
            height: 16px;
            background-repeat:no-repeat;
        }

        .shiningstar {
            background-image: url(Images/shining_star.png);
            width: 16px;
            height: 16px;
            background-repeat:no-repeat;
        }

        .auto-style1 {
            background-color: #d9edf7;
        }
    </style>

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>,

    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>




    <div class="container">

        <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
            <button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
            </button>
    <span style="font-size:18px;" class="glyphicon glyphicon-thumbs-up"></span>
            <asp:Label ID="Lbl_Msg" style="font-size:18px;margin-left:10px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" runat="server"></asp:Label>
        </asp:Panel>


        <div class="row">
            <h2>Submit a Review</h2>
            <table width="100%" border="0">
                <div class="col-md-9 col-md-offset-0">
                    <tr>
                        <td width="77%">
                            <div class="">
                                <form class="form-horizontal" action="send.php" method="post">
                                    <fieldset>

                            <!-- Name input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="name">Full Name</label>
                                <div class="col-md-9">
                                    <asp:Label runat="server" ID="Lbl_Name"></asp:Label>
                                    
                                </div>
                            </div>
<br />
                            <!-- Email input-->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="email">Tour Package</label>
                                <div class="col-md-9">
                                    <asp:DropDownList runat="server" ID="Ddl_Tp" CssClass=" w3-hover-text-orange" Width="400px" Height="25px"></asp:DropDownList>
                                </div>
                            </div>
<br />
                            <!-- Message body -->
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="message">Feedback</label>
                                <div class="col-md-9">
                                    <textarea class="form-control" runat="server" ID="Tb_Feedback"  placeholder="Please enter your feedback here..." rows="5"></textarea>
                                </div>
                            </div>

<br />
                            <!-- Rating -->
                            <div class="form-group" style="margin-top:10px;">
                                <label class="col-md-3 control-label" for="message">Your rating</label>
                                <div class="col-md-9">
                                    <%--<input id="input-21e" value="0" type="number" class="rating" min="0" max="5" step="0.5" data-size="xs">--%>
                                    <asp:Rating ID="Rating1"  runat="server" StarCssClass="blankstar"
                                        WaitingStarCssClass="waitingstar" FilledStarCssClass="shiningstar"
                                        EmptyStarCssClass="blankstar">
                                    </asp:Rating>
                                </div>
                            </div>



                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>
                                <div class="col-md-9">
                                    <asp:Button runat="server" ID="Btn_SubmitReview" Text="Submit" OnClick="Btn_SubmitReview_Click" class="btn btn-primary btn-md"></asp:Button>
                                    <button type="reset" class="btn btn-default btn-md">Clear</button>
                                </div>
                            </div>
                        </td>



    </td>
                       
                            </fieldset>
          </form>
       
                </div>
        </div>
        
    </tr>
    </table>
    </div>


    <div class="container">
        <h2>Recent Reviews</h2>
        <div class="row">

            <div class="col-md-6">
                <div class="blockquote-box clearfix">
                    <div class="square pull-left">
                        <img src="http://placehold.it/60/8e44ad/FFF&text=B" alt="" class="" />
                    </div>
                    <h4>John Doe</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a
                    ante.
               
                    </p>
                </div>
                <div class="blockquote-box blockquote-primary clearfix">
                    <div class="square pull-left">
                        <span class="glyphicon glyphicon-music glyphicon-lg"></span>
                    </div>
                    <h4>John Doe</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a
                    ante. 
                    </p>
                </div>
                <div class="blockquote-box blockquote-success clearfix">
                    <div class="square pull-left">
                        <span class="glyphicon glyphicon-tree-conifer glyphicon-lg"></span>
                    </div>
                    <h4>John Doe</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a
                    ante.
               
                    </p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="blockquote-box blockquote-info clearfix">
                    <div class="square pull-left">
                        <span class="glyphicon glyphicon-info-sign glyphicon-lg"></span>
                    </div>
                    <h4>John Doe</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a
                    ante.
               
                    </p>
                </div>
                <div class="blockquote-box blockquote-warning clearfix">
                    <div class="square pull-left">
                        <span class="glyphicon glyphicon-warning-sign glyphicon-lg"></span>
                    </div>
                    <h4>John Doe</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a
                    ante.
               
                    </p>
                </div>
                <div class="blockquote-box blockquote-danger clearfix">
                    <div class="square pull-left">
                        <span class="glyphicon glyphicon-record glyphicon-lg"></span>
                    </div>
                    <h4>John Doe</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a
                    ante.
               
                    </p>
                </div>
            </div>
        </div>
    </div>
    <script>

        (function ($) {
            var DEFAULT_MIN = 0;
            var DEFAULT_MAX = 5;
            var DEFAULT_STEP = 0.5;

            var isEmpty = function (value, trim) {
                return typeof value === 'undefined' || value === null || value === undefined || value == []
                    || value === '' || trim && $.trim(value) === '';
            };

            var validateAttr = function ($input, vattr, options) {
                var chk = isEmpty($input.data(vattr)) ? $input.attr(vattr) : $input.data(vattr);
                if (chk) {
                    return chk;
                }
                return options[vattr];
            };

            var getDecimalPlaces = function (num) {
                var match = ('' + num).match(/(?:\.(\d+))?(?:[eE]([+-]?\d+))?$/);
                if (!match) {
                    return 0;
                }
                return Math.max(0, (match[1] ? match[1].length : 0) - (match[2] ? +match[2] : 0));
            };

            var applyPrecision = function (val, precision) {
                return parseFloat(val.toFixed(precision));
            };

            // Rating public class definition
            var Rating = function (element, options) {
                this.$element = $(element);
                this.init(options);
            };

            Rating.prototype = {
                constructor: Rating,
                _parseAttr: function (vattr, options) {
                    var self = this, $input = self.$element;
                    if ($input.attr('type') === 'range' || $input.attr('type') === 'number') {
                        var val = validateAttr($input, vattr, options);
                        var chk = DEFAULT_STEP;
                        if (vattr === 'min') {
                            chk = DEFAULT_MIN;
                        }
                        else if (vattr === 'max') {
                            chk = DEFAULT_MAX;
                        }
                        else if (vattr === 'step') {
                            chk = DEFAULT_STEP;
                        }
                        var final = isEmpty(val) ? chk : val;
                        return parseFloat(final);
                    }
                    return parseFloat(options[vattr]);
                },
                /**
                 * Listens to events
                 */
                listen: function () {
                    var self = this;
                    self.$rating.on("click", function (e) {
                        if (!self.inactive) {
                            w = e.pageX - self.$rating.offset().left;
                            self.setStars(w);
                            self.$element.trigger('change');
                            self.$element.trigger('rating.change', [self.$element.val(), self.$caption.html()]);
                        }
                    });
                    self.$clear.on("click", function (e) {
                        if (!self.inactive) {
                            self.clear();
                        }
                    });
                    $(self.$element[0].form).on("reset", function (e) {
                        if (!self.inactive) {
                            self.reset();
                        }
                    });
                },
                initSlider: function (options) {
                    var self = this;
                    if (isEmpty(self.$element.val())) {
                        self.$element.val(0);
                    }
                    self.initialValue = self.$element.val();
                    self.min = (typeof options.min !== 'undefined') ? options.min : self._parseAttr('min', options);
                    self.max = (typeof options.max !== 'undefined') ? options.max : self._parseAttr('max', options);
                    self.step = (typeof options.step !== 'undefined') ? options.step : self._parseAttr('step', options);
                    if (isNaN(self.min) || isEmpty(self.min)) {
                        self.min = DEFAULT_MIN;
                    }
                    if (isNaN(self.max) || isEmpty(self.max)) {
                        self.max = DEFAULT_MAX;
                    }
                    if (isNaN(self.step) || isEmpty(self.step) || self.step == 0) {
                        self.step = DEFAULT_STEP;
                    }
                    self.diff = self.max - self.min;
                },
                /**
                 * Initializes the plugin
                 */
                init: function (options) {
                    var self = this;
                    self.options = options;
                    self.initSlider(options);
                    self.checkDisabled();
                    $element = self.$element;
                    self.containerClass = options.containerClass;
                    self.glyphicon = options.glyphicon;
                    var defaultStar = (self.glyphicon) ? '\ue006' : '\u2605';
                    self.symbol = isEmpty(options.symbol) ? defaultStar : options.symbol;
                    self.rtl = options.rtl || self.$element.attr('dir');
                    if (self.rtl) {
                        self.$element.attr('dir', 'rtl');
                    }
                    self.showClear = options.showClear;
                    self.showCaption = options.showCaption;
                    self.size = options.size;
                    self.stars = options.stars;
                    self.defaultCaption = options.defaultCaption;
                    self.starCaptions = options.starCaptions;
                    self.starCaptionClasses = options.starCaptionClasses;
                    self.clearButton = options.clearButton;
                    self.clearButtonTitle = options.clearButtonTitle;
                    self.clearButtonBaseClass = !isEmpty(options.clearButtonBaseClass) ? options.clearButtonBaseClass : 'clear-rating';
                    self.clearButtonActiveClass = !isEmpty(options.clearButtonActiveClass) ? options.clearButtonActiveClass : 'clear-rating-active';
                    self.clearCaption = options.clearCaption;
                    self.clearCaptionClass = options.clearCaptionClass;
                    self.clearValue = options.clearValue;
                    self.$element.removeClass('form-control').addClass('form-control');
                    self.$clearElement = isEmpty(options.clearElement) ? null : $(options.clearElement);
                    self.$captionElement = isEmpty(options.captionElement) ? null : $(options.captionElement);
                    if (typeof self.$rating == 'undefined' && typeof self.$container == 'undefined') {
                        self.$rating = $(document.createElement("div")).html('<div class="rating-stars"></div>');
                        self.$container = $(document.createElement("div"));
                        self.$container.before(self.$rating);
                        self.$container.append(self.$rating);
                        self.$element.before(self.$container).appendTo(self.$rating);
                    }
                    self.$stars = self.$rating.find('.rating-stars');
                    self.generateRating();
                    self.$clear = !isEmpty(self.$clearElement) ? self.$clearElement : self.$container.find('.' + self.clearButtonBaseClass);
                    self.$caption = !isEmpty(self.$captionElement) ? self.$captionElement : self.$container.find(".caption");
                    self.setStars();
                    self.$element.hide();
                    self.listen();
                    if (self.showClear) {
                        self.$clear.attr({ "class": self.getClearClass() });
                    }
                    self.$element.removeClass('rating-loading');
                },
                checkDisabled: function () {
                    var self = this;
                    self.disabled = validateAttr(self.$element, 'disabled', self.options);
                    self.readonly = validateAttr(self.$element, 'readonly', self.options);
                    self.inactive = (self.disabled || self.readonly);
                },
                getClearClass: function () {
                    return this.clearButtonBaseClass + ' ' + ((this.inactive) ? '' : this.clearButtonActiveClass);
                },
                generateRating: function () {
                    var self = this, clear = self.renderClear(), caption = self.renderCaption(),
                        css = (self.rtl) ? 'rating-container-rtl' : 'rating-container',
                        stars = self.getStars();
                    css += (self.glyphicon) ? ((self.symbol == '\ue006') ? ' rating-gly-star' : ' rating-gly') : ' rating-uni';
                    self.$rating.attr('class', css);
                    self.$rating.attr('data-content', stars);
                    self.$stars.attr('data-content', stars);
                    var css = self.rtl ? 'star-rating-rtl' : 'star-rating';
                    self.$container.attr('class', css + ' rating-' + self.size);

                    if (self.inactive) {
                        self.$container.removeClass('rating-active').addClass('rating-disabled');
                    }
                    else {
                        self.$container.removeClass('rating-disabled').addClass('rating-active');
                    }

                    if (typeof self.$caption == 'undefined' && typeof self.$clear == 'undefined') {
                        if (self.rtl) {
                            self.$container.prepend(caption).append(clear);
                        }
                        else {
                            self.$container.prepend(clear).append(caption);
                        }
                    }
                    if (!isEmpty(self.containerClass)) {
                        self.$container.removeClass(self.containerClass).addClass(self.containerClass);
                    }
                },
                getStars: function () {
                    var self = this, numStars = self.stars, stars = '';
                    for (var i = 1; i <= numStars; i++) {
                        stars += self.symbol;
                    }
                    return stars;
                },
                renderClear: function () {
                    var self = this;
                    if (!self.showClear) {
                        return '';
                    }
                    var css = self.getClearClass();
                    if (!isEmpty(self.$clearElement)) {
                        self.$clearElement.removeClass(css).addClass(css).attr({ "title": self.clearButtonTitle });
                        self.$clearElement.html(self.clearButton);
                        return '';
                    }
                    return '<div class="' + css + '" title="' + self.clearButtonTitle + '">' + self.clearButton + '</div>';
                },
                renderCaption: function () {
                    var self = this, val = self.$element.val();
                    if (!self.showCaption) {
                        return '';
                    }
                    var html = self.fetchCaption(val);
                    if (!isEmpty(self.$captionElement)) {
                        self.$captionElement.removeClass('caption').addClass('caption').attr({ "title": self.clearCaption });
                        self.$captionElement.html(html);
                        return '';
                    }
                    return '<div class="caption">' + html + '</div>';
                },
                fetchCaption: function (rating) {
                    var self = this;
                    var val = parseFloat(rating), css, cap;
                    if (typeof (self.starCaptionClasses) == "function") {
                        css = isEmpty(self.starCaptionClasses(val)) ? self.clearCaptionClass : self.starCaptionClasses(val);
                    } else {
                        css = isEmpty(self.starCaptionClasses[val]) ? self.clearCaptionClass : self.starCaptionClasses[val];
                    }
                    if (typeof (self.starCaptions) == "function") {
                        var cap = isEmpty(self.starCaptions(val)) ? self.defaultCaption.replace(/\{rating\}/g, val) : self.starCaptions(val);
                    } else {
                        var cap = isEmpty(self.starCaptions[val]) ? self.defaultCaption.replace(/\{rating\}/g, val) : self.starCaptions[val];
                    }
                    var caption = (val == self.clearValue) ? self.clearCaption : cap;
                    return '<span class="' + css + '">' + caption + '</span>';
                },
                getValueFromPosition: function (pos) {
                    var self = this, precision = getDecimalPlaces(self.step),
                        percentage, val, maxWidth = self.$rating.width();
                    percentage = (pos / maxWidth);
                    if (self.rtl) {
                        val = (self.min + Math.floor(self.diff * percentage / self.step) * self.step);
                    }
                    else {
                        val = (self.min + Math.ceil(self.diff * percentage / self.step) * self.step);
                    }
                    if (val < self.min) {
                        val = self.min;
                    }
                    else if (val > self.max) {
                        val = self.max;
                    }
                    val = applyPrecision(parseFloat(val), precision);
                    if (self.rtl) {
                        val = self.max - val;
                    }
                    return val;
                },
                setStars: function (pos) {
                    var self = this, min = self.min, max = self.max, step = self.step,
                        val = arguments.length ? self.getValueFromPosition(pos) : (isEmpty(self.$element.val()) ? 0 : self.$element.val()),
                        width = 0, maxWidth = self.$rating.width(), caption = self.fetchCaption(val);
                    width = (val - min) / max * 100;
                    if (self.rtl) {
                        width = 100 - width;
                    }
                    self.$element.val(val);
                    width += '%';
                    self.$stars.css('width', width);
                    self.$caption.html(caption);
                },
                clear: function () {
                    var self = this;
                    var title = '<span class="' + self.clearCaptionClass + '">' + self.clearCaption + '</span>';
                    self.$stars.removeClass('rated');
                    if (!self.inactive) {
                        self.$caption.html(title);
                    }
                    self.$element.val(self.clearValue);
                    self.setStars();
                    self.$element.trigger('rating.clear');
                },
                reset: function () {
                    var self = this;
                    self.$element.val(self.initialValue);
                    self.setStars();
                    self.$element.trigger('rating.reset');
                },
                update: function (val) {
                    if (arguments.length > 0) {
                        var self = this;
                        self.$element.val(val);
                        self.setStars();
                    }
                },
                refresh: function (options) {
                    var self = this;
                    if (arguments.length) {
                        var cap = '';
                        self.init($.extend(self.options, options));
                        if (self.showClear) {
                            self.$clear.show();
                        }
                        else {
                            self.$clear.hide();
                        }
                        if (self.showCaption) {
                            self.$caption.show();
                        }
                        else {
                            self.$caption.hide();
                        }
                    }
                }
            };

            //Star rating plugin definition
            $.fn.rating = function (option) {
                var args = Array.apply(null, arguments);
                args.shift();
                return this.each(function () {
                    var $this = $(this),
                        data = $this.data('rating'),
                        options = typeof option === 'object' && option;

                    if (!data) {
                        $this.data('rating', (data = new Rating(this, $.extend({}, $.fn.rating.defaults, options, $(this).data()))));
                    }

                    if (typeof option === 'string') {
                        data[option].apply(data, args);
                    }
                });
            };

            $.fn.rating.defaults = {
                stars: 5,
                glyphicon: true,
                symbol: null,
                disabled: false,
                readonly: false,
                rtl: false,
                size: 'md',
                showClear: true,
                showCaption: true,
                defaultCaption: '{rating} Stars',
                starCaptions: {
                    0.5: 'Half Star',
                    1: 'One Star',
                    1.5: 'One & Half Star',
                    2: 'Two Stars',
                    2.5: 'Two & Half Stars',
                    3: 'Three Stars',
                    3.5: 'Three & Half Stars',
                    4: 'Four Stars',
                    4.5: 'Four & Half Stars',
                    5: 'Five Stars'
                },
                starCaptionClasses: {
                    0.5: 'label label-danger',
                    1: 'label label-danger',
                    1.5: 'label label-warning',
                    2: 'label label-warning',
                    2.5: 'label label-info',
                    3: 'label label-info',
                    3.5: 'label label-primary',
                    4: 'label label-primary',
                    4.5: 'label label-success',
                    5: 'label label-success'
                },
                clearButton: '<i class="glyphicon glyphicon-minus-sign"></i>',
                clearButtonTitle: 'Clear',
                clearButtonBaseClass: 'clear-rating',
                clearButtonActiveClass: 'clear-rating-active',
                clearCaption: 'Not Rated',
                clearCaptionClass: 'label label-default',
                clearValue: 0,
                captionElement: null,
                clearElement: null,
                containerClass: null
            };


            /**
             * Convert automatically number inputs with class 'rating'
             * into the star rating control.
             */
            $('input.rating').addClass('rating-loading');

            $(document).ready(function () {
                var $input = $('input.rating'), count = Object.keys($input).length;
                if (count > 0) {
                    $input.rating();
                }
            });
        }(jQuery));

    </script>
    </div>
</asp:Content>