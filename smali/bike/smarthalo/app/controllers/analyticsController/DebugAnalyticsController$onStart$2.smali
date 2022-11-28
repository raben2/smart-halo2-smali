.class final Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$onStart$2;
.super Ljava/lang/Object;
.source "DebugAnalyticsController.kt"

# interfaces
.implements Lcom/instabug/library/model/Report$OnReportCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "report",
        "Lcom/instabug/library/model/Report;",
        "kotlin.jvm.PlatformType",
        "onReportCreated"
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

    iput-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$onStart$2;->this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReportCreated(Lcom/instabug/library/model/Report;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$onStart$2;->this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    const-string v1, "report"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->access$onInstabugReportCreated(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;Lcom/instabug/library/model/Report;)V

    return-void
.end method
