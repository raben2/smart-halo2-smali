.class Llayout/RightDrawerLayout$3;
.super Ljava/lang/Object;
.source "RightDrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 436
    iput-object p1, p0, Llayout/RightDrawerLayout$3;->this$0:Llayout/RightDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 439
    iget-object p1, p0, Llayout/RightDrawerLayout$3;->this$0:Llayout/RightDrawerLayout;

    iget v0, p1, Llayout/RightDrawerLayout;->debugModeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Llayout/RightDrawerLayout;->debugModeCount:I

    .line 441
    iget-object p1, p0, Llayout/RightDrawerLayout$3;->this$0:Llayout/RightDrawerLayout;

    iget p1, p1, Llayout/RightDrawerLayout;->debugModeCount:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_3

    .line 442
    iget-object p1, p0, Llayout/RightDrawerLayout$3;->this$0:Llayout/RightDrawerLayout;

    const/4 v0, 0x0

    iput v0, p1, Llayout/RightDrawerLayout;->debugModeCount:I

    .line 443
    iget-boolean v1, p1, Llayout/RightDrawerLayout;->isDebugModeActive:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p1, Llayout/RightDrawerLayout;->isDebugModeActive:Z

    .line 445
    iget-object p1, p0, Llayout/RightDrawerLayout$3;->this$0:Llayout/RightDrawerLayout;

    iget-boolean p1, p1, Llayout/RightDrawerLayout;->isDebugModeActive:Z

    if-eqz p1, :cond_0

    .line 446
    iget-object p1, p0, Llayout/RightDrawerLayout$3;->this$0:Llayout/RightDrawerLayout;

    invoke-static {p1}, Llayout/RightDrawerLayout;->access$100(Llayout/RightDrawerLayout;)Llayout/adapters/NotificationsAdapter;

    move-result-object p1

    invoke-static {}, Lbike/smarthalo/app/models/PresentationModels/Notification;->buildDebugMenuNotification()Lbike/smarthalo/app/models/PresentationModels/Notification;

    move-result-object v1

    invoke-virtual {p1, v1}, Llayout/adapters/NotificationsAdapter;->addUniqueNotification(Lbike/smarthalo/app/models/PresentationModels/Notification;)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object p1, p0, Llayout/RightDrawerLayout$3;->this$0:Llayout/RightDrawerLayout;

    invoke-static {p1}, Llayout/RightDrawerLayout;->access$100(Llayout/RightDrawerLayout;)Llayout/adapters/NotificationsAdapter;

    move-result-object p1

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->DebugMenu:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    invoke-virtual {p1, v1}, Llayout/adapters/NotificationsAdapter;->safeRemoveNotification(Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)Z

    .line 449
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isReleaseBuildConfig()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 450
    iget-object p1, p0, Llayout/RightDrawerLayout$3;->this$0:Llayout/RightDrawerLayout;

    invoke-virtual {p1}, Llayout/RightDrawerLayout;->removeDfuTransferNotification()V

    .line 453
    :cond_1
    :goto_0
    iget-object p1, p0, Llayout/RightDrawerLayout$3;->this$0:Llayout/RightDrawerLayout;

    iget-object p1, p1, Llayout/RightDrawerLayout;->shTemp:Landroid/widget/TextView;

    iget-object v1, p0, Llayout/RightDrawerLayout$3;->this$0:Llayout/RightDrawerLayout;

    iget-boolean v1, v1, Llayout/RightDrawerLayout;->isDebugModeActive:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method
