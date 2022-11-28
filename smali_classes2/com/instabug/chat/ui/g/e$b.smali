.class Lcom/instabug/chat/ui/g/e$b;
.super Lio/reactivex/observers/DisposableObserver;
.source "ChatsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/g/e;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/ui/g/e;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/g/e$b;->a:Lcom/instabug/chat/ui/g/e;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/instabug/chat/ui/g/e$b;->a:Lcom/instabug/chat/ui/g/e;

    invoke-static {p1}, Lcom/instabug/chat/ui/g/e;->a(Lcom/instabug/chat/ui/g/e;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/g/e$b;->a(Ljava/lang/Long;)V

    return-void
.end method
