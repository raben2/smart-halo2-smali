.class final Lcom/instabug/bug/k/b/c$a;
.super Ljava/lang/Object;
.source "ViewHierarchyInspector.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/k/b/c;->c(Lcom/instabug/bug/k/b/b;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/instabug/bug/k/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/k/b/b;


# direct methods
.method constructor <init>(Lcom/instabug/bug/k/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/k/b/c$a;->a:Lcom/instabug/bug/k/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/instabug/bug/k/b/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/k/b/c$a;->a:Lcom/instabug/bug/k/b/b;

    invoke-static {v0}, Lcom/instabug/bug/k/b/c;->a(Lcom/instabug/bug/k/b/b;)Lcom/instabug/bug/k/b/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/c$a;->call()Lcom/instabug/bug/k/b/b;

    move-result-object v0

    return-object v0
.end method
