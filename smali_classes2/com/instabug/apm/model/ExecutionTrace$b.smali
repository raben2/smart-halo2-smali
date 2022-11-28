.class Lcom/instabug/apm/model/ExecutionTrace$b;
.super Ljava/lang/Object;
.source "ExecutionTrace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/model/ExecutionTrace;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instabug/apm/model/ExecutionTrace;


# direct methods
.method constructor <init>(Lcom/instabug/apm/model/ExecutionTrace;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/model/ExecutionTrace$b;->b:Lcom/instabug/apm/model/ExecutionTrace;

    iput-object p2, p0, Lcom/instabug/apm/model/ExecutionTrace$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace$b;->b:Lcom/instabug/apm/model/ExecutionTrace;

    invoke-static {v0}, Lcom/instabug/apm/model/ExecutionTrace;->access$200(Lcom/instabug/apm/model/ExecutionTrace;)Lcom/instabug/apm/f/b/a;

    move-result-object v1

    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace$b;->b:Lcom/instabug/apm/model/ExecutionTrace;

    invoke-static {v0}, Lcom/instabug/apm/model/ExecutionTrace;->access$000(Lcom/instabug/apm/model/ExecutionTrace;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/instabug/apm/model/ExecutionTrace$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace$b;->b:Lcom/instabug/apm/model/ExecutionTrace;

    invoke-static {v0}, Lcom/instabug/apm/model/ExecutionTrace;->access$100(Lcom/instabug/apm/model/ExecutionTrace;)J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/instabug/apm/f/b/a;->a(JLjava/lang/String;J)J

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/model/ExecutionTrace$b;->b:Lcom/instabug/apm/model/ExecutionTrace;

    invoke-static {v0}, Lcom/instabug/apm/model/ExecutionTrace;->access$300(Lcom/instabug/apm/model/ExecutionTrace;)Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execution trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/apm/model/ExecutionTrace$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has started."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->d(Ljava/lang/String;)V

    return-void
.end method
