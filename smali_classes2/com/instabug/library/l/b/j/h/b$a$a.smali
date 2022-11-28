.class Lcom/instabug/library/l/b/j/h/b$a$a;
.super Lcom/instabug/library/l/b/j/h/b;
.source "LogFileDisposalPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/l/b/j/h/b$a;->a(Ljava/lang/String;Lcom/instabug/library/l/b/i/a;[Lcom/instabug/library/l/b/j/f;)Lcom/instabug/library/l/b/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Lcom/instabug/library/l/b/j/f;

.field final synthetic c:Lcom/instabug/library/l/b/i/a;


# direct methods
.method constructor <init>(Lcom/instabug/library/l/b/j/h/b$a;Ljava/lang/String;[Lcom/instabug/library/l/b/j/f;Lcom/instabug/library/l/b/i/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/l/b/j/h/b$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/instabug/library/l/b/j/h/b$a$a;->b:[Lcom/instabug/library/l/b/j/f;

    iput-object p4, p0, Lcom/instabug/library/l/b/j/h/b$a$a;->c:Lcom/instabug/library/l/b/i/a;

    invoke-direct {p0}, Lcom/instabug/library/l/b/j/h/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/instabug/library/l/b/i/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/b/j/h/b$a$a;->c:Lcom/instabug/library/l/b/i/a;

    return-object v0
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/l/b/j/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/b/j/h/b$a$a;->b:[Lcom/instabug/library/l/b/j/f;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/instabug/library/l/b/j/g;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/l/b/j/h/d;

    invoke-direct {v0}, Lcom/instabug/library/l/b/j/h/d;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/l/b/j/h/b$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instabug/library/l/b/j/g$a;->b(Ljava/lang/String;)Lcom/instabug/library/l/b/j/g;

    move-result-object v0

    return-object v0
.end method
