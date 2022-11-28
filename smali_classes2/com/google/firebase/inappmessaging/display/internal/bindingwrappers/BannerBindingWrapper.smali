.class public Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;
.super Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
.source "BannerBindingWrapper.java"


# annotations
.annotation build Lcom/google/firebase/inappmessaging/display/internal/injection/scopes/InAppMessageScope;
.end annotation


# instance fields
.field private bannerBody:Landroid/widget/TextView;

.field private bannerContentRoot:Landroid/view/ViewGroup;

.field private bannerImage:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

.field private bannerRoot:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

.field private bannerTitle:Landroid/widget/TextView;

.field private mDismissListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;-><init>(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void
.end method

.method private setActionListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setLayoutConfig(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;)V
    .locals 4

    .line 117
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->maxDialogWidthPx()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->maxDialogHeightPx()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerRoot:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 125
    :cond_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerRoot:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerImage:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->getMaxImageHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->setMaxHeight(I)V

    .line 130
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerImage:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->getMaxImageWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->setMaxWidth(I)V

    return-void
.end method

.method private setMessage(Lcom/google/firebase/inappmessaging/model/BannerMessage;)V
    .locals 2
    .param p1    # Lcom/google/firebase/inappmessaging/model/BannerMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->setViewBgColorFromHex(Landroid/view/View;Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerImage:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    .line 90
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getImageData()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getImageData()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/ImageData;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x8

    .line 89
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->setVisibility(I)V

    .line 94
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getTitle()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getTitle()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getTitle()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getTitle()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Text;->getHexColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getTitle()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/Text;->getHexColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getBody()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 105
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getBody()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerBody:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getBody()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getBody()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Text;->getHexColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 110
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerBody:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getBody()Lcom/google/firebase/inappmessaging/model/Text;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Text;->getHexColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    return-void
.end method

.method private setSwipeDismissListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 134
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 135
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerRoot:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;->setDismissListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public canSwipeToDismiss()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getConfig()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    return-object v0
.end method

.method public getDialogView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerContentRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDismissListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->mDismissListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerImage:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerRoot:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    return-object v0
.end method

.method public inflate(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            "Landroid/view/View$OnClickListener;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/firebase/inappmessaging/display/R$layout;->banner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->banner_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerRoot:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    .line 69
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->banner_content_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerContentRoot:Landroid/view/ViewGroup;

    .line 70
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->banner_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerBody:Landroid/widget/TextView;

    .line 71
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->banner_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerImage:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    .line 72
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->banner_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->bannerTitle:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->message:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getMessageType()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->BANNER:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->message:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    check-cast v0, Lcom/google/firebase/inappmessaging/model/BannerMessage;

    .line 76
    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->setMessage(Lcom/google/firebase/inappmessaging/model/BannerMessage;)V

    .line 77
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-direct {p0, v1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->setLayoutConfig(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;)V

    .line 78
    invoke-direct {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->setSwipeDismissListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;->setActionListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v2
.end method
