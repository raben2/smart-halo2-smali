.class public Llayout/statusBar/StatusBarSwitch;
.super Lcom/kyleduo/switchbutton/SwitchButton;
.source "StatusBarSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;
    }
.end annotation


# instance fields
.field private offDrawable:Landroid/graphics/drawable/Drawable;

.field private offIcon:I

.field private onDrawable:Landroid/graphics/drawable/Drawable;

.field private onIcon:I

.field private subscribers:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

.field private thumbOffColor:I

.field private thumbOnColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/kyleduo/switchbutton/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Llayout/statusBar/StatusBarSwitch;)Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;
    .locals 0

    .line 25
    iget-object p0, p0, Llayout/statusBar/StatusBarSwitch;->subscribers:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    return-object p0
.end method

.method private initListeners()V
    .locals 1

    .line 107
    new-instance v0, Llayout/statusBar/StatusBarSwitch$1;

    invoke-direct {v0, p0}, Llayout/statusBar/StatusBarSwitch$1;-><init>(Llayout/statusBar/StatusBarSwitch;)V

    invoke-virtual {p0, v0}, Llayout/statusBar/StatusBarSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initSwitch(Landroid/content/Context;)V
    .locals 10

    const/16 v0, 0x43

    .line 70
    invoke-static {p1, v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x2

    .line 71
    invoke-static {p1, v1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v2

    .line 73
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 74
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Llayout/statusBar/StatusBarSwitch;->thumbOffColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Llayout/statusBar/StatusBarSwitch;->offIcon:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x11

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_0

    .line 79
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v8, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v8, v7

    iget v3, p0, Llayout/statusBar/StatusBarSwitch;->offIcon:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v8, v6

    invoke-direct {v4, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Llayout/statusBar/StatusBarSwitch;->offDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 81
    :cond_0
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 82
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 83
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v9, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v9, v7

    aput-object v8, v9, v6

    invoke-direct {v4, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Llayout/statusBar/StatusBarSwitch;->offDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    :goto_0
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 87
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v8, p0, Llayout/statusBar/StatusBarSwitch;->thumbOnColor:I

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v8, p0, Llayout/statusBar/StatusBarSwitch;->onIcon:I

    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    .line 92
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v7

    iget v3, p0, Llayout/statusBar/StatusBarSwitch;->onIcon:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Llayout/statusBar/StatusBarSwitch;->onDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 94
    :cond_1
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 95
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 96
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v7

    aput-object v8, v1, v6

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Llayout/statusBar/StatusBarSwitch;->onDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    int-to-float v1, v2

    .line 99
    invoke-virtual {p0, v1, v1, v1, v1}, Llayout/statusBar/StatusBarSwitch;->setThumbMargin(FFFF)V

    int-to-float v0, v0

    .line 101
    invoke-virtual {p0, v0, v0}, Llayout/statusBar/StatusBarSwitch;->setThumbSize(FF)V

    const v0, 0x3fcccccd    # 1.6f

    .line 102
    invoke-virtual {p0, v0}, Llayout/statusBar/StatusBarSwitch;->setBackMeasureRatio(F)V

    const v0, 0x7f080252

    .line 103
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Llayout/statusBar/StatusBarSwitch;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;IIIILlayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;Z)V
    .locals 0

    .line 42
    iput p2, p0, Llayout/statusBar/StatusBarSwitch;->thumbOffColor:I

    .line 43
    iput p3, p0, Llayout/statusBar/StatusBarSwitch;->thumbOnColor:I

    .line 44
    iput p4, p0, Llayout/statusBar/StatusBarSwitch;->offIcon:I

    .line 45
    iput p5, p0, Llayout/statusBar/StatusBarSwitch;->onIcon:I

    .line 47
    iput-object p6, p0, Llayout/statusBar/StatusBarSwitch;->subscribers:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    .line 49
    invoke-direct {p0, p1}, Llayout/statusBar/StatusBarSwitch;->initSwitch(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0}, Llayout/statusBar/StatusBarSwitch;->initListeners()V

    .line 52
    invoke-virtual {p0, p7}, Llayout/statusBar/StatusBarSwitch;->setCheckedImmediatelyNoEvent(Z)V

    if-eqz p7, :cond_0

    .line 55
    invoke-virtual {p0}, Llayout/statusBar/StatusBarSwitch;->setOn()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Llayout/statusBar/StatusBarSwitch;->setOff()V

    :goto_0
    return-void
.end method

.method public setOff()V
    .locals 1

    .line 66
    iget-object v0, p0, Llayout/statusBar/StatusBarSwitch;->offDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Llayout/statusBar/StatusBarSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOn()V
    .locals 1

    .line 62
    iget-object v0, p0, Llayout/statusBar/StatusBarSwitch;->onDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Llayout/statusBar/StatusBarSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
