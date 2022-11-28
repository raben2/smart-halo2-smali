.class Lcom/instabug/library/m/c$f;
.super Ljava/lang/Object;
.source "SessionsLocalDataSource.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/m/c;->a(Ljava/util/List;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/String;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/m/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/m/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/m/c$f;->a:Lcom/instabug/library/m/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/reactivex/CompletableSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/m/c$f;->a:Lcom/instabug/library/m/c;

    invoke-virtual {v0, p1}, Lcom/instabug/library/m/c;->a(Ljava/lang/String;)Lio/reactivex/Completable;

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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/instabug/library/m/c$f;->a(Ljava/lang/String;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
