.class public Lcom/instabug/library/network/e/d/b;
.super Ljava/lang/Object;
.source "BaseService.java"


# instance fields
.field private final a:Lcom/instabug/library/network/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/instabug/library/network/e/d/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/instabug/library/network/Request$Callbacks;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/instabug/library/network/a;Lcom/instabug/library/network/e/d/a;Lcom/instabug/library/network/Request$Callbacks;)V
    .locals 0
    .param p1    # Lcom/instabug/library/network/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/network/e/d/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/instabug/library/network/Request$Callbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/instabug/library/network/e/d/b;->a:Lcom/instabug/library/network/a;

    .line 4
    iput-object p2, p0, Lcom/instabug/library/network/e/d/b;->b:Lcom/instabug/library/network/e/d/a;

    .line 5
    iput-object p3, p0, Lcom/instabug/library/network/e/d/b;->c:Lcom/instabug/library/network/Request$Callbacks;

    return-void
.end method


# virtual methods
.method public a()Lcom/instabug/library/network/Request$Callbacks;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/e/d/b;->c:Lcom/instabug/library/network/Request$Callbacks;

    return-object v0
.end method

.method public b()Lcom/instabug/library/network/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/e/d/b;->a:Lcom/instabug/library/network/a;

    return-object v0
.end method

.method public c()Lcom/instabug/library/network/e/d/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/e/d/b;->b:Lcom/instabug/library/network/e/d/a;

    return-object v0
.end method
