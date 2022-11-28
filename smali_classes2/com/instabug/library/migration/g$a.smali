.class Lcom/instabug/library/migration/g$a;
.super Ljava/lang/Object;
.source "UserAttributeMigration.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/migration/g;->migrate()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/instabug/library/migration/AbstractMigration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/migration/g;


# direct methods
.method constructor <init>(Lcom/instabug/library/migration/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/migration/g$a;->a:Lcom/instabug/library/migration/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/instabug/library/migration/AbstractMigration;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/migration/g$a;->a:Lcom/instabug/library/migration/g;

    invoke-static {v0}, Lcom/instabug/library/migration/g;->a(Lcom/instabug/library/migration/g;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/migration/g$a;->a:Lcom/instabug/library/migration/g;

    invoke-static {v0}, Lcom/instabug/library/migration/g;->a(Lcom/instabug/library/migration/g;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/migration/g$a;->a:Lcom/instabug/library/migration/g;

    invoke-static {v0}, Lcom/instabug/library/migration/g;->b(Lcom/instabug/library/migration/g;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/migration/g$a;->a:Lcom/instabug/library/migration/g;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_0
    return-void
.end method
