.class Lcom/instabug/apm/f/d/d$b;
.super Ljava/lang/Object;
.source "SessionHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/f/d/d;->b(Lcom/instabug/library/model/common/Session;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/model/common/Session;

.field final synthetic b:Lcom/instabug/apm/f/d/d;


# direct methods
.method constructor <init>(Lcom/instabug/apm/f/d/d;Lcom/instabug/library/model/common/Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/f/d/d$b;->b:Lcom/instabug/apm/f/d/d;

    iput-object p2, p0, Lcom/instabug/apm/f/d/d$b;->a:Lcom/instabug/library/model/common/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/d/d$b;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v0}, Lcom/instabug/apm/f/d/d;->e(Lcom/instabug/apm/f/d/d;)Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/instabug/apm/f/d/d$b$a;

    invoke-direct {v1, p0}, Lcom/instabug/apm/f/d/d$b$a;-><init>(Lcom/instabug/apm/f/d/d$b;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->execute(Lcom/instabug/library/internal/utils/stability/execution/Executable;)V

    return-void
.end method
