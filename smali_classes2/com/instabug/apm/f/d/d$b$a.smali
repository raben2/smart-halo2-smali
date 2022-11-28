.class Lcom/instabug/apm/f/d/d$b$a;
.super Ljava/lang/Object;
.source "SessionHandlerImpl.java"

# interfaces
.implements Lcom/instabug/library/internal/utils/stability/execution/Executable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/f/d/d$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/apm/f/d/d$b;


# direct methods
.method constructor <init>(Lcom/instabug/apm/f/d/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/f/d/d$b$a;->a:Lcom/instabug/apm/f/d/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/d/d$b$a;->a:Lcom/instabug/apm/f/d/d$b;

    iget-object v0, v0, Lcom/instabug/apm/f/d/d$b;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v0}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/f/d/d$b$a;->a:Lcom/instabug/apm/f/d/d$b;

    iget-object v0, v0, Lcom/instabug/apm/f/d/d$b;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v0}, Lcom/instabug/apm/f/d/d;->c(Lcom/instabug/apm/f/d/d;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/instabug/apm/f/d/d$b$a$a;

    invoke-direct {v1, p0}, Lcom/instabug/apm/f/d/d$b$a$a;-><init>(Lcom/instabug/apm/f/d/d$b$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/f/d/d$b$a;->a:Lcom/instabug/apm/f/d/d$b;

    iget-object v0, v0, Lcom/instabug/apm/f/d/d$b;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v0}, Lcom/instabug/apm/f/d/d;->d(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    const-string v1, "Attempted to start session while another session is already running. Skipping.."

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
