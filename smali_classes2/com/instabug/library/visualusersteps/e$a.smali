.class Lcom/instabug/library/visualusersteps/e$a;
.super Ljava/lang/Object;
.source "TouchedViewsProcessor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/visualusersteps/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/instabug/library/visualusersteps/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/instabug/library/visualusersteps/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/visualusersteps/b;Lcom/instabug/library/visualusersteps/b;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/instabug/library/visualusersteps/b;->a(Lcom/instabug/library/visualusersteps/b;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/library/visualusersteps/b;

    check-cast p2, Lcom/instabug/library/visualusersteps/b;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/visualusersteps/e$a;->a(Lcom/instabug/library/visualusersteps/b;Lcom/instabug/library/visualusersteps/b;)I

    move-result p1

    return p1
.end method
