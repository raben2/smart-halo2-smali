.class Lcom/instabug/library/internal/video/d/e$a$a;
.super Ljava/lang/Object;
.source "MicRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/d/e$a;->a(Lcom/instabug/library/internal/video/d/d;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/d/d;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/instabug/library/internal/video/d/e$a;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/d/e$a;Lcom/instabug/library/internal/video/d/d;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/d/e$a$a;->c:Lcom/instabug/library/internal/video/d/e$a;

    iput-object p2, p0, Lcom/instabug/library/internal/video/d/e$a$a;->a:Lcom/instabug/library/internal/video/d/d;

    iput-object p3, p0, Lcom/instabug/library/internal/video/d/e$a$a;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$a$a;->c:Lcom/instabug/library/internal/video/d/e$a;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/e$a;->a(Lcom/instabug/library/internal/video/d/e$a;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/d/e$a$a;->c:Lcom/instabug/library/internal/video/d/e$a;

    invoke-static {v0}, Lcom/instabug/library/internal/video/d/e$a;->a(Lcom/instabug/library/internal/video/d/e$a;)Lcom/instabug/library/internal/video/d/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/internal/video/d/e$a$a;->a:Lcom/instabug/library/internal/video/d/d;

    iget-object v2, p0, Lcom/instabug/library/internal/video/d/e$a$a;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/instabug/library/internal/video/d/d$a;->a(Lcom/instabug/library/internal/video/d/d;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
