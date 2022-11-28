.class Lcom/instabug/library/network/e/e/c$h;
.super Ljava/lang/Object;
.source "AttributesRemoteDataSource.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/network/e/e/c;->b(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/network/RequestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/network/e/e/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/e/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/e/e/c$h;->a:Lcom/instabug/library/network/e/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/network/RequestResponse;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/instabug/library/network/e/e/c$h;->a:Lcom/instabug/library/network/e/e/c;

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/instabug/library/network/e/e/c;->b(J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/network/RequestResponse;

    invoke-virtual {p0, p1}, Lcom/instabug/library/network/e/e/c$h;->a(Lcom/instabug/library/network/RequestResponse;)V

    return-void
.end method
