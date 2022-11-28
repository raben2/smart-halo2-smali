.class Lcom/instabug/library/l/b/j/c$a;
.super Ljava/lang/Object;
.source "FileInspector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/l/b/j/c;->a(Ljava/util/Collection;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/instabug/library/l/b/j/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/instabug/library/l/b/j/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/l/b/j/e;Lcom/instabug/library/l/b/j/e;)I
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/instabug/library/l/b/j/e;->b()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1}, Lcom/instabug/library/l/b/j/e;->b()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/library/l/b/j/e;

    check-cast p2, Lcom/instabug/library/l/b/j/e;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/l/b/j/c$a;->a(Lcom/instabug/library/l/b/j/e;Lcom/instabug/library/l/b/j/e;)I

    move-result p1

    return p1
.end method
