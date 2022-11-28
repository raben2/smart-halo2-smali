.class public Lcom/mklimek/frameviedoview/FrameVideoView;
.super Landroid/widget/FrameLayout;
.source "FrameVideoView.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private context:Landroid/content/Context;

.field private impl:Lcom/mklimek/frameviedoview/Impl;

.field private implType:Lcom/mklimek/frameviedoview/ImplType;

.field private placeholderView:Landroid/view/View;

.field private videoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/mklimek/frameviedoview/FrameVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/mklimek/frameviedoview/FrameVideoView;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->context:Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Lcom/mklimek/frameviedoview/FrameVideoView;->createPlaceholderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    .line 32
    invoke-direct {p0, p1}, Lcom/mklimek/frameviedoview/FrameVideoView;->getImplInstance(Landroid/content/Context;)Lcom/mklimek/frameviedoview/Impl;

    move-result-object p1

    iput-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->impl:Lcom/mklimek/frameviedoview/Impl;

    .line 33
    iget-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mklimek/frameviedoview/FrameVideoView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->context:Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/mklimek/frameviedoview/FrameVideoView;->createPlaceholderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mklimek/frameviedoview/FrameVideoView;->getImplInstance(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mklimek/frameviedoview/Impl;

    move-result-object p1

    iput-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->impl:Lcom/mklimek/frameviedoview/Impl;

    .line 41
    iget-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mklimek/frameviedoview/FrameVideoView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createPlaceholderView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 94
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    .line 95
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 96
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 97
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getImplInstance(Landroid/content/Context;)Lcom/mklimek/frameviedoview/Impl;
    .locals 2

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 46
    sget-object v0, Lcom/mklimek/frameviedoview/ImplType;->TEXTURE_VIEW:Lcom/mklimek/frameviedoview/ImplType;

    iput-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->implType:Lcom/mklimek/frameviedoview/ImplType;

    .line 47
    new-instance v0, Lcom/mklimek/frameviedoview/TextureViewImpl;

    invoke-direct {v0, p1}, Lcom/mklimek/frameviedoview/TextureViewImpl;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/mklimek/frameviedoview/FrameVideoView;->addView(Landroid/view/View;)V

    return-object v0

    .line 51
    :cond_0
    sget-object v0, Lcom/mklimek/frameviedoview/ImplType;->VIDEO_VIEW:Lcom/mklimek/frameviedoview/ImplType;

    iput-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->implType:Lcom/mklimek/frameviedoview/ImplType;

    .line 52
    new-instance v0, Lcom/mklimek/frameviedoview/VideoViewImpl;

    invoke-direct {v0, p1}, Lcom/mklimek/frameviedoview/VideoViewImpl;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/mklimek/frameviedoview/FrameVideoView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private getImplInstance(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mklimek/frameviedoview/Impl;
    .locals 2

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 60
    sget-object v0, Lcom/mklimek/frameviedoview/ImplType;->TEXTURE_VIEW:Lcom/mklimek/frameviedoview/ImplType;

    iput-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->implType:Lcom/mklimek/frameviedoview/ImplType;

    .line 61
    new-instance v0, Lcom/mklimek/frameviedoview/TextureViewImpl;

    invoke-direct {v0, p1, p2}, Lcom/mklimek/frameviedoview/TextureViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/mklimek/frameviedoview/FrameVideoView;->addView(Landroid/view/View;)V

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Lcom/mklimek/frameviedoview/ImplType;->VIDEO_VIEW:Lcom/mklimek/frameviedoview/ImplType;

    iput-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->implType:Lcom/mklimek/frameviedoview/ImplType;

    .line 66
    new-instance v0, Lcom/mklimek/frameviedoview/VideoViewImpl;

    invoke-direct {v0, p1, p2}, Lcom/mklimek/frameviedoview/VideoViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/mklimek/frameviedoview/FrameVideoView;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public getImplType()Lcom/mklimek/frameviedoview/ImplType;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->implType:Lcom/mklimek/frameviedoview/ImplType;

    return-object v0
.end method

.method public getPlaceholderView()Landroid/view/View;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->impl:Lcom/mklimek/frameviedoview/Impl;

    invoke-interface {v0}, Lcom/mklimek/frameviedoview/Impl;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->impl:Lcom/mklimek/frameviedoview/Impl;

    invoke-interface {v0}, Lcom/mklimek/frameviedoview/Impl;->onResume()V

    return-void
.end method

.method public setFrameVideoViewListener(Lcom/mklimek/frameviedoview/FrameVideoViewListener;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->impl:Lcom/mklimek/frameviedoview/Impl;

    invoke-interface {v0, p1}, Lcom/mklimek/frameviedoview/Impl;->setFrameVideoViewListener(Lcom/mklimek/frameviedoview/FrameVideoViewListener;)V

    return-void
.end method

.method public setImpl(Lcom/mklimek/frameviedoview/ImplType;)V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/mklimek/frameviedoview/FrameVideoView;->removeAllViews()V

    .line 123
    sget-object v0, Lcom/mklimek/frameviedoview/ImplType;->TEXTURE_VIEW:Lcom/mklimek/frameviedoview/ImplType;

    if-ne p1, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 124
    sget-object p1, Lcom/mklimek/frameviedoview/ImplType;->VIDEO_VIEW:Lcom/mklimek/frameviedoview/ImplType;

    .line 125
    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->context:Landroid/content/Context;

    const-string v1, "Cannot use TEXTURE_VIEW impl because your device running API level 13 or lower"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->implType:Lcom/mklimek/frameviedoview/ImplType;

    .line 128
    sget-object v0, Lcom/mklimek/frameviedoview/FrameVideoView$1;->$SwitchMap$com$mklimek$frameviedoview$ImplType:[I

    invoke-virtual {p1}, Lcom/mklimek/frameviedoview/ImplType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    new-instance p1, Lcom/mklimek/frameviedoview/VideoViewImpl;

    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mklimek/frameviedoview/VideoViewImpl;-><init>(Landroid/content/Context;)V

    .line 137
    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    iget-object v1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->videoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/mklimek/frameviedoview/VideoViewImpl;->init(Landroid/view/View;Landroid/net/Uri;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/mklimek/frameviedoview/FrameVideoView;->addView(Landroid/view/View;)V

    .line 139
    iput-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->impl:Lcom/mklimek/frameviedoview/Impl;

    goto :goto_0

    .line 130
    :pswitch_1
    new-instance p1, Lcom/mklimek/frameviedoview/TextureViewImpl;

    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mklimek/frameviedoview/TextureViewImpl;-><init>(Landroid/content/Context;)V

    .line 131
    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    iget-object v1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->videoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/mklimek/frameviedoview/TextureViewImpl;->init(Landroid/view/View;Landroid/net/Uri;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/mklimek/frameviedoview/FrameVideoView;->addView(Landroid/view/View;)V

    .line 133
    iput-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->impl:Lcom/mklimek/frameviedoview/Impl;

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mklimek/frameviedoview/FrameVideoView;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0}, Lcom/mklimek/frameviedoview/FrameVideoView;->onResume()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 2

    .line 73
    iput-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->videoUri:Landroid/net/Uri;

    .line 74
    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->impl:Lcom/mklimek/frameviedoview/Impl;

    iget-object v1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/mklimek/frameviedoview/Impl;->init(Landroid/view/View;Landroid/net/Uri;)V

    return-void
.end method

.method public setup(Landroid/net/Uri;I)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->videoUri:Landroid/net/Uri;

    .line 79
    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    iget-object p2, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->impl:Lcom/mklimek/frameviedoview/Impl;

    iget-object v0, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    invoke-interface {p2, v0, p1}, Lcom/mklimek/frameviedoview/Impl;->init(Landroid/view/View;Landroid/net/Uri;)V

    return-void
.end method

.method public setup(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->videoUri:Landroid/net/Uri;

    .line 86
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/mklimek/frameviedoview/FrameVideoView;->placeholderView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
