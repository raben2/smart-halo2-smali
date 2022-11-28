.class Lcom/instabug/apm/model/APMNetworkLog$a;
.super Ljava/lang/Object;
.source "APMNetworkLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/model/APMNetworkLog;->insert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/apm/model/APMNetworkLog;


# direct methods
.method constructor <init>(Lcom/instabug/apm/model/APMNetworkLog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/APMNetworkLog$a;->a:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog$a;->a:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-static {v0}, Lcom/instabug/apm/model/APMNetworkLog;->access$000(Lcom/instabug/apm/model/APMNetworkLog;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog$a;->a:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-static {v0}, Lcom/instabug/apm/model/APMNetworkLog;->access$100(Lcom/instabug/apm/model/APMNetworkLog;)Lcom/instabug/apm/f/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/apm/model/APMNetworkLog$a;->a:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-interface {v1, v2}, Lcom/instabug/apm/f/c/a;->b(Lcom/instabug/apm/model/APMNetworkLog;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/apm/model/APMNetworkLog;->access$002(Lcom/instabug/apm/model/APMNetworkLog;J)J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/model/APMNetworkLog$a;->a:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-static {v0}, Lcom/instabug/apm/model/APMNetworkLog;->access$100(Lcom/instabug/apm/model/APMNetworkLog;)Lcom/instabug/apm/f/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/apm/model/APMNetworkLog$a;->a:Lcom/instabug/apm/model/APMNetworkLog;

    invoke-interface {v0, v1}, Lcom/instabug/apm/f/c/a;->a(Lcom/instabug/apm/model/APMNetworkLog;)V

    :goto_0
    return-void
.end method
