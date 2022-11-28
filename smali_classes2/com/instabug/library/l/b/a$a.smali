.class public Lcom/instabug/library/l/b/a$a;
.super Ljava/lang/Object;
.source "DataGarbageCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/l/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/instabug/library/l/b/i/b<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/l/b/a$a;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/l/b/i/b;)Lcom/instabug/library/l/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/l/b/i/b<",
            "*>;)",
            "Lcom/instabug/library/l/b/a$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/b/a$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lcom/instabug/library/l/b/a;
    .locals 2

    .line 2
    new-instance v0, Lcom/instabug/library/l/b/a;

    iget-object v1, p0, Lcom/instabug/library/l/b/a$a;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/instabug/library/l/b/a;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
