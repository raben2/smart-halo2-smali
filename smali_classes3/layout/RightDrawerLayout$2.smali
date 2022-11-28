.class Llayout/RightDrawerLayout$2;
.super Ljava/lang/Object;
.source "RightDrawerLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/RightDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/RightDrawerLayout;


# direct methods
.method constructor <init>(Llayout/RightDrawerLayout;)V
    .locals 0

    .line 415
    iput-object p1, p0, Llayout/RightDrawerLayout$2;->this$0:Llayout/RightDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 418
    iget-object p1, p0, Llayout/RightDrawerLayout$2;->this$0:Llayout/RightDrawerLayout;

    invoke-static {p1}, Llayout/RightDrawerLayout;->access$100(Llayout/RightDrawerLayout;)Llayout/adapters/NotificationsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Llayout/adapters/NotificationsAdapter;->getCount()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 419
    iget-object p1, p0, Llayout/RightDrawerLayout$2;->this$0:Llayout/RightDrawerLayout;

    invoke-static {p1}, Llayout/RightDrawerLayout;->access$100(Llayout/RightDrawerLayout;)Llayout/adapters/NotificationsAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Llayout/adapters/NotificationsAdapter;->getItem(I)Lbike/smarthalo/app/models/PresentationModels/Notification;

    move-result-object p1

    .line 421
    sget-object p2, Llayout/RightDrawerLayout$6;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$Notification$NotificationType:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/Notification;->getNotificationType()Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    move-result-object p1

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 429
    :pswitch_0
    iget-object p1, p0, Llayout/RightDrawerLayout$2;->this$0:Llayout/RightDrawerLayout;

    invoke-virtual {p1}, Llayout/RightDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Llayout/RightDrawerLayout$2;->this$0:Llayout/RightDrawerLayout;

    invoke-virtual {p3}, Llayout/RightDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class p4, Lbike/smarthalo/app/activities/DebugMenuActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 426
    :pswitch_1
    iget-object p1, p0, Llayout/RightDrawerLayout$2;->this$0:Llayout/RightDrawerLayout;

    invoke-static {p1}, Llayout/RightDrawerLayout;->access$300(Llayout/RightDrawerLayout;)V

    goto :goto_0

    .line 423
    :pswitch_2
    iget-object p1, p0, Llayout/RightDrawerLayout$2;->this$0:Llayout/RightDrawerLayout;

    invoke-static {p1}, Llayout/RightDrawerLayout;->access$200(Llayout/RightDrawerLayout;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
