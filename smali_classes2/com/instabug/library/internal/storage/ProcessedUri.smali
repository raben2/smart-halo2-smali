.class public Lcom/instabug/library/internal/storage/ProcessedUri;
.super Ljava/lang/Object;
.source "ProcessedUri.java"


# instance fields
.field private final isUriEncrypted:Z

.field private final uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Z)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/storage/ProcessedUri;->uri:Landroid/net/Uri;

    .line 3
    iput-boolean p2, p0, Lcom/instabug/library/internal/storage/ProcessedUri;->isUriEncrypted:Z

    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/ProcessedUri;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public isUriEncrypted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/internal/storage/ProcessedUri;->isUriEncrypted:Z

    return v0
.end method
