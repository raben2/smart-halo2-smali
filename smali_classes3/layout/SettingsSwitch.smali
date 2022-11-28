.class public Llayout/SettingsSwitch;
.super Landroid/widget/RelativeLayout;
.source "SettingsSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/SettingsSwitch$ButtonType;,
        Llayout/SettingsSwitch$SettingButtonEventListener;
    }
.end annotation


# instance fields
.field private binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

.field private contentColor:I

.field private context:Landroid/content/Context;

.field private controlHeight:I

.field private innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private isLeft:Z

.field private leftIcon:I

.field private leftText:Ljava/lang/String;

.field private rightIcon:I

.field private rightText:Ljava/lang/String;

.field private shouldCancelNextEvent:Z

.field private subscriber:Llayout/SettingsSwitch$SettingButtonEventListener;

.field private thumbColor:I

.field private trackColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object p1, p0, Llayout/SettingsSwitch;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    .line 61
    invoke-static {p1, p0, v0}, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    move-result-object p1

    iput-object p1, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    .line 63
    invoke-direct {p0, p2}, Llayout/SettingsSwitch;->initAttributes(Landroid/util/AttributeSet;)V

    .line 64
    invoke-virtual {p0}, Llayout/SettingsSwitch;->initSwitch()V

    .line 65
    invoke-direct {p0}, Llayout/SettingsSwitch;->initValues()V

    .line 66
    invoke-direct {p0}, Llayout/SettingsSwitch;->initListeners()V

    return-void
.end method

.method private disableButton(Llayout/SettingsSwitch$ButtonType;)V
    .locals 2

    .line 101
    sget-object v0, Llayout/SettingsSwitch$ButtonType;->LeftButton:Llayout/SettingsSwitch$ButtonType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->leftButtonIcon:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->rightButtonIcon:Landroid/widget/ImageView;

    .line 102
    :goto_0
    sget-object v1, Llayout/SettingsSwitch$ButtonType;->LeftButton:Llayout/SettingsSwitch$ButtonType;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->leftButtonText:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->rightButtonText:Landroid/widget/TextView;

    .line 104
    :goto_1
    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconGray(Landroid/widget/ImageView;)V

    .line 105
    iget-object v0, p0, Llayout/SettingsSwitch;->context:Landroid/content/Context;

    const v1, 0x7f0602b7

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private disableThumb()V
    .locals 10

    .line 212
    invoke-virtual {p0}, Llayout/SettingsSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 215
    invoke-virtual {p0}, Llayout/SettingsSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v1

    .line 216
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v5, 0x8

    new-array v5, v5, [F

    int-to-float v1, v1

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v7, 0x1

    aput v1, v5, v7

    const/4 v8, 0x2

    aput v1, v5, v8

    const/4 v9, 0x3

    aput v1, v5, v9

    const/4 v9, 0x4

    aput v1, v5, v9

    const/4 v9, 0x5

    aput v1, v5, v9

    const/4 v9, 0x6

    aput v1, v5, v9

    aput v1, v5, v2

    const/4 v1, 0x0

    invoke-direct {v4, v5, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 219
    iget-object v1, p0, Llayout/SettingsSwitch;->context:Landroid/content/Context;

    iget v2, p0, Llayout/SettingsSwitch;->controlHeight:I

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v1

    .line 221
    div-int/2addr v0, v8

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 222
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 223
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Llayout/SettingsSwitch;->context:Landroid/content/Context;

    const v2, 0x106000d

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 226
    new-array v1, v7, [I

    const v2, 0x10100a0

    aput v2, v1, v6

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 227
    new-array v1, v6, [I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v1, p0, Llayout/SettingsSwitch;->innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private drawSwitch()V
    .locals 10

    .line 128
    invoke-virtual {p0}, Llayout/SettingsSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 129
    iget-object v1, p0, Llayout/SettingsSwitch;->innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchMinWidth(I)V

    .line 132
    invoke-virtual {p0}, Llayout/SettingsSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v1

    .line 133
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v5, 0x8

    new-array v5, v5, [F

    int-to-float v1, v1

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v7, 0x1

    aput v1, v5, v7

    const/4 v8, 0x2

    aput v1, v5, v8

    const/4 v9, 0x3

    aput v1, v5, v9

    const/4 v9, 0x4

    aput v1, v5, v9

    const/4 v9, 0x5

    aput v1, v5, v9

    const/4 v9, 0x6

    aput v1, v5, v9

    aput v1, v5, v2

    const/4 v1, 0x0

    invoke-direct {v4, v5, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 136
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 139
    iget-object v2, p0, Llayout/SettingsSwitch;->context:Landroid/content/Context;

    iget v4, p0, Llayout/SettingsSwitch;->controlHeight:I

    invoke-static {v2, v4}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v2

    .line 141
    div-int/2addr v0, v8

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 142
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 143
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Llayout/SettingsSwitch;->thumbColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Llayout/SettingsSwitch;->trackColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 148
    new-array v2, v7, [I

    const v4, 0x10100a0

    aput v4, v2, v6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 149
    new-array v2, v6, [I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v2, p0, Llayout/SettingsSwitch;->innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Llayout/SettingsSwitch;->innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v0, p0, Llayout/SettingsSwitch;->innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private enableButton(Llayout/SettingsSwitch$ButtonType;)V
    .locals 4

    .line 109
    sget-object v0, Llayout/SettingsSwitch$ButtonType;->LeftButton:Llayout/SettingsSwitch$ButtonType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->leftButtonIcon:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->rightButtonIcon:Landroid/widget/ImageView;

    .line 110
    :goto_0
    sget-object v1, Llayout/SettingsSwitch$ButtonType;->LeftButton:Llayout/SettingsSwitch$ButtonType;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->leftButtonText:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->rightButtonText:Landroid/widget/TextView;

    .line 112
    :goto_1
    iget v1, p0, Llayout/SettingsSwitch;->contentColor:I

    iget-object v2, p0, Llayout/SettingsSwitch;->context:Landroid/content/Context;

    const v3, 0x7f0602d8

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 113
    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconWhite(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 115
    :cond_2
    iget v1, p0, Llayout/SettingsSwitch;->contentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 118
    :goto_2
    iget v0, p0, Llayout/SettingsSwitch;->contentColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private initAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .line 70
    iget-object v0, p0, Llayout/SettingsSwitch;->context:Landroid/content/Context;

    sget-object v1, Lbike/smarthalo/app/R$styleable;->SettingsSwitch:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0x46

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Llayout/SettingsSwitch;->controlHeight:I

    const/4 v1, 0x2

    .line 74
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Llayout/SettingsSwitch;->isLeft:Z

    const/4 v0, 0x7

    const v1, -0xff01

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Llayout/SettingsSwitch;->thumbColor:I

    .line 78
    iget-object v0, p0, Llayout/SettingsSwitch;->context:Landroid/content/Context;

    const v1, 0x7f0600c4

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Llayout/SettingsSwitch;->trackColor:I

    const/4 v0, -0x1

    .line 79
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Llayout/SettingsSwitch;->contentColor:I

    const/4 v0, 0x6

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llayout/SettingsSwitch;->rightText:Ljava/lang/String;

    const/4 v0, 0x4

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llayout/SettingsSwitch;->leftText:Ljava/lang/String;

    const/4 v0, 0x5

    .line 84
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Llayout/SettingsSwitch;->rightIcon:I

    const/4 v0, 0x3

    .line 85
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Llayout/SettingsSwitch;->leftIcon:I

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initListeners()V
    .locals 2

    .line 171
    iget-object v0, p0, Llayout/SettingsSwitch;->innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Llayout/-$$Lambda$SettingsSwitch$--H3ycdNdSuWn9_S8Tf3DVOo36Y;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$SettingsSwitch$--H3ycdNdSuWn9_S8Tf3DVOo36Y;-><init>(Llayout/SettingsSwitch;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initValues()V
    .locals 2

    .line 157
    iget-object v0, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->leftButtonIcon:Landroid/widget/ImageView;

    iget v1, p0, Llayout/SettingsSwitch;->leftIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v0, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->rightButtonIcon:Landroid/widget/ImageView;

    iget v1, p0, Llayout/SettingsSwitch;->rightIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->leftButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Llayout/SettingsSwitch;->leftText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->rightButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Llayout/SettingsSwitch;->rightText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-boolean v0, p0, Llayout/SettingsSwitch;->isLeft:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Llayout/SettingsSwitch;->setButtonLeft()V

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0}, Llayout/SettingsSwitch;->setButtonRight()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$initListeners$0(Llayout/SettingsSwitch;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 173
    invoke-direct {p0}, Llayout/SettingsSwitch;->setButtonRight()V

    .line 175
    iget-object p1, p0, Llayout/SettingsSwitch;->subscriber:Llayout/SettingsSwitch$SettingButtonEventListener;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Llayout/SettingsSwitch;->shouldCancelNextEvent:Z

    if-nez p2, :cond_1

    .line 176
    invoke-interface {p1}, Llayout/SettingsSwitch$SettingButtonEventListener;->onRightButtonPressed()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0}, Llayout/SettingsSwitch;->setButtonLeft()V

    .line 181
    iget-object p1, p0, Llayout/SettingsSwitch;->subscriber:Llayout/SettingsSwitch$SettingButtonEventListener;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Llayout/SettingsSwitch;->shouldCancelNextEvent:Z

    if-nez p2, :cond_1

    .line 182
    invoke-interface {p1}, Llayout/SettingsSwitch$SettingButtonEventListener;->onLeftButtonPressed()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Llayout/SettingsSwitch;->shouldCancelNextEvent:Z

    return-void
.end method

.method private setButtonLeft()V
    .locals 1

    .line 91
    sget-object v0, Llayout/SettingsSwitch$ButtonType;->LeftButton:Llayout/SettingsSwitch$ButtonType;

    invoke-direct {p0, v0}, Llayout/SettingsSwitch;->enableButton(Llayout/SettingsSwitch$ButtonType;)V

    .line 92
    sget-object v0, Llayout/SettingsSwitch$ButtonType;->RightButton:Llayout/SettingsSwitch$ButtonType;

    invoke-direct {p0, v0}, Llayout/SettingsSwitch;->disableButton(Llayout/SettingsSwitch$ButtonType;)V

    return-void
.end method

.method private setButtonRight()V
    .locals 1

    .line 96
    sget-object v0, Llayout/SettingsSwitch$ButtonType;->RightButton:Llayout/SettingsSwitch$ButtonType;

    invoke-direct {p0, v0}, Llayout/SettingsSwitch;->enableButton(Llayout/SettingsSwitch$ButtonType;)V

    .line 97
    sget-object v0, Llayout/SettingsSwitch$ButtonType;->LeftButton:Llayout/SettingsSwitch$ButtonType;

    invoke-direct {p0, v0}, Llayout/SettingsSwitch;->disableButton(Llayout/SettingsSwitch$ButtonType;)V

    return-void
.end method


# virtual methods
.method public disableSwitch()V
    .locals 2

    .line 242
    iget-object v0, p0, Llayout/SettingsSwitch;->innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 244
    invoke-direct {p0}, Llayout/SettingsSwitch;->disableThumb()V

    .line 245
    sget-object v0, Llayout/SettingsSwitch$ButtonType;->LeftButton:Llayout/SettingsSwitch$ButtonType;

    invoke-direct {p0, v0}, Llayout/SettingsSwitch;->disableButton(Llayout/SettingsSwitch$ButtonType;)V

    .line 246
    sget-object v0, Llayout/SettingsSwitch$ButtonType;->RightButton:Llayout/SettingsSwitch$ButtonType;

    invoke-direct {p0, v0}, Llayout/SettingsSwitch;->disableButton(Llayout/SettingsSwitch$ButtonType;)V

    return-void
.end method

.method public enableSwitch(Z)V
    .locals 2

    .line 232
    iget-object v0, p0, Llayout/SettingsSwitch;->innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 233
    invoke-direct {p0}, Llayout/SettingsSwitch;->drawSwitch()V

    if-eqz p1, :cond_0

    .line 235
    invoke-direct {p0}, Llayout/SettingsSwitch;->setButtonLeft()V

    goto :goto_0

    .line 237
    :cond_0
    invoke-direct {p0}, Llayout/SettingsSwitch;->setButtonRight()V

    :goto_0
    return-void
.end method

.method public initSwitch()V
    .locals 2

    .line 122
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Llayout/SettingsSwitch;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llayout/SettingsSwitch;->innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 123
    invoke-direct {p0}, Llayout/SettingsSwitch;->drawSwitch()V

    .line 124
    iget-object v0, p0, Llayout/SettingsSwitch;->binding:Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->switchLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Llayout/SettingsSwitch;->innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setIsLeft(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, p1, v0}, Llayout/SettingsSwitch;->setIsLeft(ZZ)V

    return-void
.end method

.method public setIsLeft(ZZ)V
    .locals 1

    .line 199
    iget-object v0, p0, Llayout/SettingsSwitch;->innerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    xor-int/lit8 p2, p2, 0x1

    .line 200
    iput-boolean p2, p0, Llayout/SettingsSwitch;->shouldCancelNextEvent:Z

    xor-int/lit8 p1, p1, 0x1

    .line 201
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setListeners(Llayout/SettingsSwitch$SettingButtonEventListener;)V
    .locals 0

    .line 191
    iput-object p1, p0, Llayout/SettingsSwitch;->subscriber:Llayout/SettingsSwitch$SettingButtonEventListener;

    return-void
.end method
