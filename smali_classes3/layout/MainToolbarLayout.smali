.class public Llayout/MainToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "MainToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/MainToolbarLayout$MainToolbarInterface;
    }
.end annotation


# instance fields
.field alarmOrange:I

.field assistantBlue:I

.field private connectionStatusLayout:Llayout/ConnectionStatusLayout;

.field fitnessPink:I

.field private isAnimating:Z

.field private leftDrawerIconClickable:Landroid/widget/RelativeLayout;

.field private leftDrawerIconOnClickListener:Landroid/view/View$OnClickListener;

.field lightYellow:I

.field navigationGreen:I

.field private onClickSearchBarListener:Landroid/view/View$OnClickListener;

.field private onClickSettingsIconListener:Landroid/view/View$OnClickListener;

.field private overlayOnClickListener:Landroid/view/View$OnClickListener;

.field private searchIcon:Landroid/widget/ImageView;

.field private searchTextView:Landroid/widget/TextView;

.field private searchTitleView:Landroid/widget/RelativeLayout;

.field private section:Ljava/lang/String;

.field private settingsIconWrapper:Landroid/widget/RelativeLayout;

.field private subscriber:Llayout/MainToolbarLayout$MainToolbarInterface;

.field private titleTextView:Landroid/widget/TextView;

.field private toolbarLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Llayout/MainToolbarLayout$1;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$1;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->onClickSettingsIconListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Llayout/MainToolbarLayout$2;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$2;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->onClickSearchBarListener:Landroid/view/View$OnClickListener;

    .line 197
    new-instance v0, Llayout/MainToolbarLayout$3;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$3;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->leftDrawerIconOnClickListener:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Llayout/MainToolbarLayout$4;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$4;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->overlayOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, p1, v0, v1}, Llayout/MainToolbarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    new-instance v0, Llayout/MainToolbarLayout$1;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$1;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->onClickSettingsIconListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Llayout/MainToolbarLayout$2;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$2;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->onClickSearchBarListener:Landroid/view/View$OnClickListener;

    .line 197
    new-instance v0, Llayout/MainToolbarLayout$3;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$3;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->leftDrawerIconOnClickListener:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Llayout/MainToolbarLayout$4;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$4;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->overlayOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, p2, v0}, Llayout/MainToolbarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    new-instance v0, Llayout/MainToolbarLayout$1;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$1;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->onClickSettingsIconListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Llayout/MainToolbarLayout$2;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$2;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->onClickSearchBarListener:Landroid/view/View$OnClickListener;

    .line 197
    new-instance v0, Llayout/MainToolbarLayout$3;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$3;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->leftDrawerIconOnClickListener:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Llayout/MainToolbarLayout$4;

    invoke-direct {v0, p0}, Llayout/MainToolbarLayout$4;-><init>(Llayout/MainToolbarLayout;)V

    iput-object v0, p0, Llayout/MainToolbarLayout;->overlayOnClickListener:Landroid/view/View$OnClickListener;

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Llayout/MainToolbarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Llayout/MainToolbarLayout;)Llayout/MainToolbarLayout$MainToolbarInterface;
    .locals 0

    .line 26
    iget-object p0, p0, Llayout/MainToolbarLayout;->subscriber:Llayout/MainToolbarLayout$MainToolbarInterface;

    return-object p0
.end method

.method static synthetic access$100(Llayout/MainToolbarLayout;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Llayout/MainToolbarLayout;->section:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Llayout/MainToolbarLayout;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Llayout/MainToolbarLayout;->isAnimating:Z

    return p1
.end method

.method private getEntranceAnimationListener(Landroid/widget/ImageView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 309
    new-instance v0, Llayout/MainToolbarLayout$6;

    invoke-direct {v0, p0, p1}, Llayout/MainToolbarLayout$6;-><init>(Llayout/MainToolbarLayout;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private getExitAnimationListener(Landroid/widget/ImageView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 288
    new-instance v0, Llayout/MainToolbarLayout$5;

    invoke-direct {v0, p0, p1}, Llayout/MainToolbarLayout$5;-><init>(Llayout/MainToolbarLayout;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private updateLayout()V
    .locals 0

    .line 230
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->requestLayout()V

    .line 231
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public getSearchBarText()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Llayout/MainToolbarLayout;->searchTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleFinishInflate()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060128

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Llayout/MainToolbarLayout;->navigationGreen:I

    .line 87
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600ea

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Llayout/MainToolbarLayout;->lightYellow:I

    .line 88
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06001c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Llayout/MainToolbarLayout;->alarmOrange:I

    .line 89
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060079

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Llayout/MainToolbarLayout;->fitnessPink:I

    .line 90
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060020

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Llayout/MainToolbarLayout;->assistantBlue:I

    const v0, 0x7f0a034a

    .line 92
    invoke-virtual {p0, v0}, Llayout/MainToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llayout/MainToolbarLayout;->leftDrawerIconClickable:Landroid/widget/RelativeLayout;

    .line 93
    iget-object v0, p0, Llayout/MainToolbarLayout;->leftDrawerIconClickable:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Llayout/MainToolbarLayout;->leftDrawerIconOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01cb

    .line 95
    invoke-virtual {p0, v0}, Llayout/MainToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    iget-object v1, p0, Llayout/MainToolbarLayout;->overlayOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0552

    .line 98
    invoke-virtual {p0, v0}, Llayout/MainToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    const v0, 0x7f0a046c

    .line 100
    invoke-virtual {p0, v0}, Llayout/MainToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/MainToolbarLayout;->searchIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0474

    .line 102
    invoke-virtual {p0, v0}, Llayout/MainToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llayout/MainToolbarLayout;->searchTitleView:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v0, p0, Llayout/MainToolbarLayout;->searchTitleView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Llayout/MainToolbarLayout;->onClickSearchBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0473

    .line 104
    invoke-virtual {p0, v0}, Llayout/MainToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/MainToolbarLayout;->searchTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0560

    .line 106
    invoke-virtual {p0, v0}, Llayout/MainToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llayout/MainToolbarLayout;->toolbarLinearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0108

    .line 108
    invoke-virtual {p0, v0}, Llayout/MainToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/ConnectionStatusLayout;

    iput-object v0, p0, Llayout/MainToolbarLayout;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    const v0, 0x7f0a0495

    .line 110
    invoke-virtual {p0, v0}, Llayout/MainToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llayout/MainToolbarLayout;->settingsIconWrapper:Landroid/widget/RelativeLayout;

    .line 111
    iget-object v0, p0, Llayout/MainToolbarLayout;->settingsIconWrapper:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Llayout/MainToolbarLayout;->onClickSettingsIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const p2, 0x7f0d00e0

    .line 72
    invoke-static {p1, p2, p0}, Llayout/MainToolbarLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 251
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 252
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->updateLayoutParams()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 78
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->handleFinishInflate()V

    return-void
.end method

.method public setElevation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070105

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 330
    :goto_0
    invoke-virtual {p0, p1}, Llayout/MainToolbarLayout;->setElevation(F)V

    return-void
.end method

.method public setOverlayVisibility(ZZ)V
    .locals 3

    const v0, 0x7f0a01cb

    .line 256
    invoke-virtual {p0, v0}, Llayout/MainToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 258
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 259
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean v1, p0, Llayout/MainToolbarLayout;->isAnimating:Z

    if-eqz v1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz v0, :cond_7

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 268
    iput-boolean p2, p0, Llayout/MainToolbarLayout;->isAnimating:Z

    .line 269
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f01000c

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 271
    invoke-direct {p0, v0}, Llayout/MainToolbarLayout;->getEntranceAnimationListener(Landroid/widget/ImageView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 273
    :cond_4
    iput-boolean p2, p0, Llayout/MainToolbarLayout;->isAnimating:Z

    .line 274
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f01000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 276
    invoke-direct {p0, v0}, Llayout/MainToolbarLayout;->getExitAnimationListener(Landroid/widget/ImageView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 278
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 280
    :cond_5
    invoke-virtual {p0, p1}, Llayout/MainToolbarLayout;->setElevation(Z)V

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    .line 281
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setSearchToolBarVisuals(Ljava/lang/String;)V
    .locals 3

    .line 216
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object p1, p0, Llayout/MainToolbarLayout;->searchTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110352

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object p1, p0, Llayout/MainToolbarLayout;->searchTextView:Landroid/widget/TextView;

    const v1, 0x7f0602b2

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object p1, p0, Llayout/MainToolbarLayout;->searchIcon:Landroid/widget/ImageView;

    const v0, 0x7f080226

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v1, p0, Llayout/MainToolbarLayout;->searchTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p1, p0, Llayout/MainToolbarLayout;->searchTextView:Landroid/widget/TextView;

    const v1, 0x7f0602d8

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object p1, p0, Llayout/MainToolbarLayout;->searchIcon:Landroid/widget/ImageView;

    const v0, 0x7f080227

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSection(Ljava/lang/String;Z)V
    .locals 2

    .line 137
    iput-object p1, p0, Llayout/MainToolbarLayout;->section:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "assistant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "map"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "fitness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/16 v0, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 182
    :pswitch_0
    iget-object p1, p0, Llayout/MainToolbarLayout;->searchTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    const p2, 0x7f110058

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object p1, p0, Llayout/MainToolbarLayout;->leftDrawerIconClickable:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Llayout/MainToolbarLayout;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    invoke-virtual {p1, v1}, Llayout/ConnectionStatusLayout;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Llayout/MainToolbarLayout;->settingsIconWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    iget p1, p0, Llayout/MainToolbarLayout;->assistantBlue:I

    invoke-virtual {p0, p1}, Llayout/MainToolbarLayout;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 173
    :pswitch_1
    iget-object p1, p0, Llayout/MainToolbarLayout;->searchTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    const p2, 0x7f11012d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object p1, p0, Llayout/MainToolbarLayout;->leftDrawerIconClickable:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Llayout/MainToolbarLayout;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    invoke-virtual {p1, v1}, Llayout/ConnectionStatusLayout;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Llayout/MainToolbarLayout;->settingsIconWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    iget p1, p0, Llayout/MainToolbarLayout;->fitnessPink:I

    invoke-virtual {p0, p1}, Llayout/MainToolbarLayout;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 164
    :pswitch_2
    iget-object p1, p0, Llayout/MainToolbarLayout;->searchTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    const p2, 0x7f110031

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object p1, p0, Llayout/MainToolbarLayout;->leftDrawerIconClickable:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Llayout/MainToolbarLayout;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    invoke-virtual {p1, v1}, Llayout/ConnectionStatusLayout;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Llayout/MainToolbarLayout;->settingsIconWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    iget p1, p0, Llayout/MainToolbarLayout;->alarmOrange:I

    invoke-virtual {p0, p1}, Llayout/MainToolbarLayout;->setBackgroundColor(I)V

    goto :goto_3

    .line 155
    :pswitch_3
    iget-object p1, p0, Llayout/MainToolbarLayout;->searchTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    const p2, 0x7f110262

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object p1, p0, Llayout/MainToolbarLayout;->leftDrawerIconClickable:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Llayout/MainToolbarLayout;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    invoke-virtual {p1, v1}, Llayout/ConnectionStatusLayout;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Llayout/MainToolbarLayout;->settingsIconWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 161
    iget p1, p0, Llayout/MainToolbarLayout;->lightYellow:I

    invoke-virtual {p0, p1}, Llayout/MainToolbarLayout;->setBackgroundColor(I)V

    goto :goto_3

    :pswitch_4
    if-eqz p2, :cond_1

    .line 142
    iget-object p1, p0, Llayout/MainToolbarLayout;->searchTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    const p2, 0x7f11009f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 146
    :cond_1
    iget-object p1, p0, Llayout/MainToolbarLayout;->searchTitleView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Llayout/MainToolbarLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_2
    iget-object p1, p0, Llayout/MainToolbarLayout;->settingsIconWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget p1, p0, Llayout/MainToolbarLayout;->navigationGreen:I

    invoke-virtual {p0, p1}, Llayout/MainToolbarLayout;->setBackgroundColor(I)V

    .line 194
    :goto_3
    invoke-direct {p0}, Llayout/MainToolbarLayout;->updateLayout()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x32815a18 -> :sswitch_4
        0x1a55c -> :sswitch_3
        0x5897a51 -> :sswitch_2
        0x6233516 -> :sswitch_1
        0x553972de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSubscriber(Llayout/MainToolbarLayout$MainToolbarInterface;)V
    .locals 0

    .line 82
    iput-object p1, p0, Llayout/MainToolbarLayout;->subscriber:Llayout/MainToolbarLayout$MainToolbarInterface;

    return-void
.end method

.method public updateLayoutParams()V
    .locals 5

    .line 235
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDimensionsHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 236
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbike/smarthalo/app/helpers/SHDimensionsHelper;->getActionBarSize(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0, v2}, Llayout/MainToolbarLayout;->setElevation(Z)V

    .line 240
    invoke-virtual {p0}, Llayout/MainToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060128

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0, v3}, Llayout/MainToolbarLayout;->setBackgroundColor(I)V

    .line 241
    invoke-virtual {p0, v1}, Llayout/MainToolbarLayout;->setMinimumHeight(I)V

    .line 243
    iget-object v3, p0, Llayout/MainToolbarLayout;->toolbarLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 245
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 246
    invoke-virtual {p0, v0}, Llayout/MainToolbarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
