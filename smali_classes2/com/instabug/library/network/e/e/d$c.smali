.class Lcom/instabug/library/network/e/e/d$c;
.super Ljava/lang/Object;
.source "AttributesRepository.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/network/e/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/instabug/library/network/Request;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/util/List<",
        "Lcom/instabug/library/model/h;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/network/e/e/d;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/e/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/e/e/d$c;->a:Lcom/instabug/library/network/e/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/network/Request;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/network/Request;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/h;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/e/e/d$c;->a:Lcom/instabug/library/network/e/e/d;

    invoke-static {v0}, Lcom/instabug/library/network/e/e/d;->b(Lcom/instabug/library/network/e/e/d;)Lcom/instabug/library/network/e/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/network/e/e/c;->b(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/network/Request;

    invoke-virtual {p0, p1}, Lcom/instabug/library/network/e/e/d$c;->a(Lcom/instabug/library/network/Request;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
