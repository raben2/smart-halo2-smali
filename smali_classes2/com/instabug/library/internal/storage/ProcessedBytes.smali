.class public Lcom/instabug/library/internal/storage/ProcessedBytes;
.super Ljava/lang/Object;
.source "ProcessedBytes.java"


# instance fields
.field private final fileBytes:[B

.field private final isProcessSuccessful:Z


# direct methods
.method public constructor <init>([BZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/internal/storage/ProcessedBytes;->fileBytes:[B

    .line 3
    iput-boolean p2, p0, Lcom/instabug/library/internal/storage/ProcessedBytes;->isProcessSuccessful:Z

    return-void
.end method


# virtual methods
.method public getFileBytes()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/storage/ProcessedBytes;->fileBytes:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public isProcessSuccessful()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/internal/storage/ProcessedBytes;->isProcessSuccessful:Z

    return v0
.end method
