.class Lcom/instabug/library/l/b/j/g$a$a;
.super Lcom/instabug/library/l/b/j/g;
.source "FileScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/l/b/j/g$a;->b(Ljava/lang/String;)Lcom/instabug/library/l/b/j/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instabug/library/l/b/j/g$a;


# direct methods
.method constructor <init>(Lcom/instabug/library/l/b/j/g$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/l/b/j/g$a$a;->b:Lcom/instabug/library/l/b/j/g$a;

    iput-object p2, p0, Lcom/instabug/library/l/b/j/g$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/instabug/library/l/b/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/j/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/b/j/g$a$a;->b:Lcom/instabug/library/l/b/j/g$a;

    iget-object v1, p0, Lcom/instabug/library/l/b/j/g$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instabug/library/l/b/j/g$a;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/b/j/g$a$a;->b:Lcom/instabug/library/l/b/j/g$a;

    iget-object v1, p0, Lcom/instabug/library/l/b/j/g$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instabug/library/l/b/j/g$a;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
