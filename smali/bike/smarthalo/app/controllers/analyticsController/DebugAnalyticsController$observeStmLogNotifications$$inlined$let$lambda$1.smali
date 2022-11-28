.class final Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeStmLogNotifications$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "DebugAnalyticsController.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->observeStmLogNotifications()V
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
        "Ljava/lang/String;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "logLine",
        "",
        "kotlin.jvm.PlatformType",
        "accept",
        "bike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeStmLogNotifications$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeStmLogNotifications$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeStmLogNotifications$$inlined$let$lambda$1;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeStmLogNotifications$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    invoke-virtual {v0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->getStmLogs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
