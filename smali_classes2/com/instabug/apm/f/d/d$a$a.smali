.class Lcom/instabug/apm/f/d/d$a$a;
.super Ljava/lang/Object;
.source "SessionHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/f/d/d$a;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/apm/b/b/d;

.field final synthetic b:Lcom/instabug/apm/f/d/d$a;


# direct methods
.method constructor <init>(Lcom/instabug/apm/f/d/d$a;Lcom/instabug/apm/b/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/f/d/d$a$a;->b:Lcom/instabug/apm/f/d/d$a;

    iput-object p2, p0, Lcom/instabug/apm/f/d/d$a$a;->a:Lcom/instabug/apm/b/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/d/d$a$a;->b:Lcom/instabug/apm/f/d/d$a;

    iget-object v0, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v0}, Lcom/instabug/apm/f/d/d;->b(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/a/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/apm/f/d/d$a$a;->a:Lcom/instabug/apm/b/b/d;

    invoke-interface {v0, v1}, Lcom/instabug/apm/b/a/d/a;->a(Lcom/instabug/apm/b/b/d;)I

    return-void
.end method
