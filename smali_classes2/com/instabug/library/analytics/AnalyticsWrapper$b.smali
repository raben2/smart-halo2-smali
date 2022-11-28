.class Lcom/instabug/library/analytics/AnalyticsWrapper$b;
.super Ljava/lang/Object;
.source "AnalyticsWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsageAsync([Lcom/instabug/library/analytics/model/Api$Parameter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/instabug/library/analytics/model/Api$Parameter;

.field final synthetic b:Lcom/instabug/library/analytics/AnalyticsWrapper;


# direct methods
.method constructor <init>(Lcom/instabug/library/analytics/AnalyticsWrapper;[Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/analytics/AnalyticsWrapper$b;->b:Lcom/instabug/library/analytics/AnalyticsWrapper;

    iput-object p2, p0, Lcom/instabug/library/analytics/AnalyticsWrapper$b;->a:[Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/analytics/AnalyticsWrapper$b;->b:Lcom/instabug/library/analytics/AnalyticsWrapper;

    iget-object v1, p0, Lcom/instabug/library/analytics/AnalyticsWrapper$b;->a:[Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    return-void
.end method
