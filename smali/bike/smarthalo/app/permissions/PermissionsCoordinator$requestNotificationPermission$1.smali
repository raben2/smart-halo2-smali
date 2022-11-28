.class final Lbike/smarthalo/app/permissions/PermissionsCoordinator$requestNotificationPermission$1;
.super Ljava/lang/Object;
.source "PermissionsCoordinator.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/permissions/PermissionsCoordinator;->requestNotificationPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "accept",
        "(Ljava/lang/Long;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/permissions/PermissionsCoordinator;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/permissions/PermissionsCoordinator;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator$requestNotificationPermission$1;->this$0:Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Long;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator$requestNotificationPermission$1;->this$0:Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    invoke-virtual {p1}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->hasAcceptedNotificationsPermissions(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator$requestNotificationPermission$1;->this$0:Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    invoke-virtual {p1}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator$requestNotificationPermission$1;->this$0:Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    invoke-static {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->access$getParentActivity$p(Lbike/smarthalo/app/permissions/PermissionsCoordinator;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    iget-object p1, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator$requestNotificationPermission$1;->this$0:Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    invoke-virtual {p1}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getFlowCompletionContract()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;->onForwardFinish()V

    .line 191
    iget-object p1, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator$requestNotificationPermission$1;->this$0:Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    invoke-static {p1}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->access$clearSubscriptions(Lbike/smarthalo/app/permissions/PermissionsCoordinator;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/permissions/PermissionsCoordinator$requestNotificationPermission$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
