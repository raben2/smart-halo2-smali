.class public Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;
.super Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
.source "ImageBindingWrapper.java"


# annotations
.annotation build Lcom/google/firebase/inappmessaging/display/internal/injection/scopes/InAppMessageScope;
.end annotation


# instance fields
.field private collapseButton:Landroid/widget/Button;

.field private imageContentRoot:Landroid/view/ViewGroup;

.field private imageRoot:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

.field private imageView:Landroid/widget/ImageView;


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

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;-><init>(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void
.end method


# virtual methods
.method public getCollapseButton()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->collapseButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getDialogView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->imageContentRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->imageRoot:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    return-object v0
.end method

.method public inflate(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 4
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

    .line 65
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/firebase/inappmessaging/display/R$layout;->image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->image_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->imageRoot:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    .line 67
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->image_content_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->imageContentRoot:Landroid/view/ViewGroup;

    .line 68
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->imageView:Landroid/widget/ImageView;

    .line 69
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->collapse_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->collapseButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->getMaxImageHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 73
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->getMaxImageWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 74
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->message:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getMessageType()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->IMAGE_ONLY:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->message:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    check-cast v0, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;

    .line 76
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->imageView:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->getImageData()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->getImageData()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/model/ImageData;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v3, 0x8

    .line 76
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->getAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->imageRoot:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    invoke-virtual {p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;->setDismissListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;->collapseButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method
