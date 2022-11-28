.class public Llayout/NotificationItemLayout;
.super Landroid/widget/RelativeLayout;
.source "NotificationItemLayout.java"


# instance fields
.field private binding:Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Llayout/NotificationItemLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "layout_inflater"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    .line 24
    invoke-static {p1, p0, v0}, Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Llayout/NotificationItemLayout;->binding:Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public updateLayoutContent(Lbike/smarthalo/app/models/PresentationModels/Notification;)V
    .locals 2

    .line 28
    iget-object v0, p0, Llayout/NotificationItemLayout;->binding:Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/Notification;->getText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 29
    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/Notification;->getAdditionalText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Llayout/NotificationItemLayout;->binding:Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;->textView:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Llayout/NotificationItemLayout;->binding:Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/Notification;->getAdditionalText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 33
    :cond_0
    iget-object v0, p0, Llayout/NotificationItemLayout;->binding:Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/NotificationItemLayoutBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Llayout/NotificationItemLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/Notification;->getImageId()I

    move-result p1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
