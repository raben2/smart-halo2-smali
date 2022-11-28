.class Lcom/instabug/library/logging/e$d;
.super Ljava/lang/Object;
.source "LoggingFileResolver.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/logging/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Long;",
        "Ljava/util/List<",
        "Lcom/instabug/library/model/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/logging/e;


# direct methods
.method constructor <init>(Lcom/instabug/library/logging/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/logging/e$d;->a:Lcom/instabug/library/logging/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/instabug/library/logging/e$d;->a:Lcom/instabug/library/logging/e;

    invoke-static {v0}, Lcom/instabug/library/logging/e;->a(Lcom/instabug/library/logging/e;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

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
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/instabug/library/logging/e$d;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
