.class Lcom/instabug/library/logging/e$e;
.super Ljava/lang/Object;
.source "LoggingFileResolver.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


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
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/logging/e;


# direct methods
.method constructor <init>(Lcom/instabug/library/logging/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/logging/e$e;->a:Lcom/instabug/library/logging/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/instabug/library/logging/e$e;->a:Lcom/instabug/library/logging/e;

    invoke-static {p1}, Lcom/instabug/library/logging/e;->b(Lcom/instabug/library/logging/e;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/instabug/library/logging/e$e;->a(Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method
