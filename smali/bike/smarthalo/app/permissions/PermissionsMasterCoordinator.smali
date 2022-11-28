.class public final Lbike/smarthalo/app/permissions/PermissionsMasterCoordinator;
.super Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;
.source "PermissionsMasterCoordinator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lbike/smarthalo/app/permissions/PermissionsMasterCoordinator;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;",
        "context",
        "Landroid/content/Context;",
        "flowCompletion",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;",
        "flowActivity",
        "Lbike/smarthalo/app/navigationFlow/FlowActivityContract;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/FlowActivityContract;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/FlowActivityContract;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/navigationFlow/FlowActivityContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowCompletion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowActivity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v0, p3

    check-cast v0, Lbike/smarthalo/app/navigationFlow/BaseActivityContract;

    invoke-direct {p0, p1, p2, v0, p4}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/BaseActivityContract;Landroidx/lifecycle/Lifecycle;)V

    .line 25
    new-instance p4, Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    .line 28
    move-object v4, p3

    check-cast v4, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;

    .line 29
    move-object v5, p3

    check-cast v5, Lbike/smarthalo/app/permissions/PermissionActivityContract;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v9, p5

    .line 25
    invoke-direct/range {v1 .. v9}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/permissions/PermissionActivityContract;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;ZZLbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 36
    sget-object p1, Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionView;->Companion:Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionView$Companion;

    invoke-virtual {p1}, Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionView$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    move-object p3, p4

    check-cast p3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 p5, 0x0

    aput-object p3, p2, p5

    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/permissions/PermissionsMasterCoordinator;->injectItems(Ljava/lang/String;[Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;)V

    .line 37
    invoke-virtual {p4}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->start()Ljava/lang/String;

    return-void
.end method
