.class public Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;
.super Ljava/lang/Object;
.source "AssistantNotificationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/adapters/AssistantNotificationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AssistantItemViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field itemSwitch:Landroid/widget/Switch;

.field final synthetic this$0:Llayout/adapters/AssistantNotificationsAdapter;


# direct methods
.method constructor <init>(Llayout/adapters/AssistantNotificationsAdapter;Landroid/view/View;)V
    .locals 0

    .line 108
    iput-object p1, p0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->this$0:Llayout/adapters/AssistantNotificationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a030c

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f0a030a

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->description:Landroid/widget/TextView;

    const p1, 0x7f0a030e

    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Llayout/adapters/AssistantNotificationsAdapter$AssistantItemViewHolder;->itemSwitch:Landroid/widget/Switch;

    return-void
.end method
