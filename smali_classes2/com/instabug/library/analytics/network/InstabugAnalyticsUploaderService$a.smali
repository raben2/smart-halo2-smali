.class Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService$a;
.super Ljava/lang/Object;
.source "InstabugAnalyticsUploaderService.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService;


# direct methods
.method constructor <init>(Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService$a;->a:Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService$a;->a:Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService;

    invoke-static {v0, v1, p1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->setLastUploadedAt(JLandroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/instabug/library/analytics/util/a;->a()V

    .line 4
    invoke-static {}, Lcom/instabug/library/analytics/util/a;->b()V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService;

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/instabug/library/analytics/network/InstabugAnalyticsUploaderService$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
