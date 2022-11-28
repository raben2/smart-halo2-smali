.class final Lcom/instabug/bug/screenshot/viewhierarchy/utilities/b$a;
.super Ljava/lang/Object;
.source "BitmapUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/screenshot/viewhierarchy/utilities/b;->c(Lcom/instabug/bug/k/b/b;Landroid/app/Activity;)Lio/reactivex/Observable;
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

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/instabug/bug/k/b/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/b$a;->a:Lcom/instabug/bug/k/b/b;

    iput-object p2, p0, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/b$a;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/instabug/bug/k/b/b;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/b$a;->a:Lcom/instabug/bug/k/b/b;

    iget-object v1, p0, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/b$a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/b;->a(Lcom/instabug/bug/k/b/b;Landroid/app/Activity;)Lcom/instabug/bug/k/b/b;

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
    invoke-virtual {p0}, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/b$a;->call()Lcom/instabug/bug/k/b/b;

    move-result-object v0

    return-object v0
.end method
