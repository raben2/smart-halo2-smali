.class Lcom/instabug/bug/c$a$a;
.super Ljava/lang/Object;
.source "LiveBugManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/c$a;


# direct methods
.method constructor <init>(Lcom/instabug/bug/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/c$a$a;->a:Lcom/instabug/bug/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/c$a$a;->a:Lcom/instabug/bug/c$a;

    iget-object v0, v0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    invoke-static {v0}, Lcom/instabug/bug/c;->b(Lcom/instabug/bug/c;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/c$a$a;->a:Lcom/instabug/bug/c$a;

    iget-object v0, v0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    invoke-virtual {v0}, Lcom/instabug/bug/c;->e()V

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/c$a$a;->a:Lcom/instabug/bug/c$a;

    iget-object v0, v0, Lcom/instabug/bug/c$a;->b:Lcom/instabug/bug/c;

    invoke-static {v0}, Lcom/instabug/bug/c;->c(Lcom/instabug/bug/c;)V

    return-void
.end method
