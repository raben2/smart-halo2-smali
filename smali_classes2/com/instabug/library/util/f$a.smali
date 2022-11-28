.class Lcom/instabug/library/util/f$a;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/util/f;->b()Lio/reactivex/functions/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/util/f;


# direct methods
.method constructor <init>(Lcom/instabug/library/util/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/util/f$a;->a:Lcom/instabug/library/util/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/instabug/library/util/f$a;->a:Lcom/instabug/library/util/f;

    invoke-virtual {p1}, Lcom/instabug/library/util/f;->a()Z

    move-result p1

    return p1
.end method
