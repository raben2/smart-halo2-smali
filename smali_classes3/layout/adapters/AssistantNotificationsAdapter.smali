.class public Llayout/adapters/AssistantNotificationsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AssistantNotificationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;,
        Llayout/adapters/AssistantNotificationsAdapter$NotificationSwitchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Llayout/adapters/AssistantNotificationsAdapter$NotificationSwitchListener;

.field private switches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lbike/smarthalo/app/models/AssistantNotificationType;",
            "Landroid/widget/Switch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Llayout/adapters/AssistantNotificationsAdapter$NotificationSwitchListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;",
            ">;",
            "Llayout/adapters/AssistantNotificationsAdapter$NotificationSwitchListener;",
            ")V"
        }
    .end annotation

    const v0, 0x7f0d00cb

    .line 30
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Llayout/adapters/AssistantNotificationsAdapter;->switches:Ljava/util/HashMap;

    .line 31
    iput-object p3, p0, Llayout/adapters/AssistantNotificationsAdapter;->listener:Llayout/adapters/AssistantNotificationsAdapter$NotificationSwitchListener;

    return-void
.end method

.method public static synthetic lambda$getView$0(Llayout/adapters/AssistantNotificationsAdapter;Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 89
    iget-object p2, p0, Llayout/adapters/AssistantNotificationsAdapter;->listener:Llayout/adapters/AssistantNotificationsAdapter$NotificationSwitchListener;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;->type:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-interface {p2, p1, p3}, Llayout/adapters/AssistantNotificationsAdapter$NotificationSwitchListener;->onSwitchToggled(Lbike/smarthalo/app/models/AssistantNotificationType;Z)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 37
    invoke-virtual {p0}, Llayout/adapters/AssistantNotificationsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    invoke-virtual {p0, p1}, Llayout/adapters/AssistantNotificationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const p2, 0x7f0d00cb

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 44
    new-instance v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;

    invoke-direct {v0, p0, p2}, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;-><init>(Llayout/adapters/AssistantNotificationsAdapter;Landroid/view/View;)V

    .line 46
    sget-object v1, Llayout/adapters/AssistantNotificationsAdapter$1;->$SwitchMap$bike$smarthalo$app$models$AssistantNotificationType:[I

    iget-object v2, p1, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;->type:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/AssistantNotificationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 76
    :pswitch_0
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x7f080086

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f110068

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 72
    :pswitch_1
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x7f080088

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f11006a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x7f080087

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f110069

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 64
    :pswitch_3
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f110066

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 60
    :pswitch_4
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x7f080089

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f11006b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 56
    :pswitch_5
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x7f080084

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f110065

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 52
    :pswitch_6
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x7f080083

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f110064

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 48
    :pswitch_7
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f110067

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 81
    :goto_0
    iget-boolean v1, p1, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;->isFeatureAvailable:Z

    if-nez v1, :cond_0

    .line 82
    iget-object v1, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f060022

    invoke-static {p3, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    :cond_0
    iget-object p3, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->itemSwitch:Landroid/widget/Switch;

    iget-boolean v1, p1, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;->isSwitchEnabled:Z

    invoke-virtual {p3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 87
    iget-object p3, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->itemSwitch:Landroid/widget/Switch;

    new-instance v1, Llayout/adapters/-$$Lambda$AssistantNotificationsAdapter$m9-mHM3RDC6sSe-8O8yzaOy7Ijg;

    invoke-direct {v1, p0, p1}, Llayout/adapters/-$$Lambda$AssistantNotificationsAdapter$m9-mHM3RDC6sSe-8O8yzaOy7Ijg;-><init>(Llayout/adapters/AssistantNotificationsAdapter;Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;)V

    invoke-virtual {p3, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-object p3, p0, Llayout/adapters/AssistantNotificationsAdapter;->switches:Ljava/util/HashMap;

    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;->type:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p3, p0, Llayout/adapters/AssistantNotificationsAdapter;->switches:Ljava/util/HashMap;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;->type:Lbike/smarthalo/app/models/AssistantNotificationType;

    iget-object v0, v0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->itemSwitch:Landroid/widget/Switch;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
