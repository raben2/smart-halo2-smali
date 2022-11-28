.class public Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;
.super Ljava/lang/Object;
.source "StmDfuInformation.java"


# instance fields
.field private currentPosition:I

.field private firmwareBytes:[B

.field private payloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I[B)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->payloads:Ljava/util/List;

    .line 16
    iput-object p3, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->firmwareBytes:[B

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->currentPosition:I

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 25
    iget v0, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->currentPosition:I

    return v0
.end method

.method public getCurrentState()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;
    .locals 2

    .line 37
    iget v0, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->currentPosition:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->payloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 38
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->Ongoing:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    return-object v0

    .line 39
    :cond_0
    iget v0, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->currentPosition:I

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->payloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 40
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->Completed:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    return-object v0

    .line 42
    :cond_1
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->NotStarted:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    return-object v0
.end method

.method public getFirmwareBytes()[B
    .locals 1

    .line 47
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->firmwareBytes:[B

    return-object v0
.end method

.method public getPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->payloads:Ljava/util/List;

    return-object v0
.end method

.method public getProgressPercentage()I
    .locals 2

    .line 29
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->currentPosition:I

    int-to-float v0, v0

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->payloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public incrementCurrentPosition()V
    .locals 1

    .line 33
    iget v0, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->currentPosition:I

    return-void
.end method
