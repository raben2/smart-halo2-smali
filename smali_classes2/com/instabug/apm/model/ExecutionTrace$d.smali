.class Lcom/instabug/apm/model/ExecutionTrace$d;
.super Ljava/lang/Object;
.source "ExecutionTrace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/model/ExecutionTrace;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/instabug/apm/model/ExecutionTrace;


# direct methods
.method constructor <init>(Lcom/instabug/apm/model/ExecutionTrace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/ExecutionTrace$d;->c:Lcom/instabug/apm/model/ExecutionTrace;

    iput-object p2, p0, Lcom/instabug/apm/model/ExecutionTrace$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/instabug/apm/model/ExecutionTrace$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace$d;->c:Lcom/instabug/apm/model/ExecutionTrace;

    invoke-static {v0}, Lcom/instabug/apm/model/ExecutionTrace;->access$200(Lcom/instabug/apm/model/ExecutionTrace;)Lcom/instabug/apm/f/b/a;

    move-result-object v1

    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace$d;->c:Lcom/instabug/apm/model/ExecutionTrace;

    invoke-static {v0}, Lcom/instabug/apm/model/ExecutionTrace;->access$000(Lcom/instabug/apm/model/ExecutionTrace;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace$d;->c:Lcom/instabug/apm/model/ExecutionTrace;

    invoke-static {v0}, Lcom/instabug/apm/model/ExecutionTrace;->access$600(Lcom/instabug/apm/model/ExecutionTrace;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/instabug/apm/model/ExecutionTrace$d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace$d;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 3
    :goto_0
    invoke-interface/range {v1 .. v6}, Lcom/instabug/apm/f/b/a;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
