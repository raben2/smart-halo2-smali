.class final Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;
.super Lcom/jakewharton/rxbinding2/widget/SeekBarProgressChangeEvent;
.source "AutoValue_SeekBarProgressChangeEvent.java"


# instance fields
.field private final fromUser:Z

.field private final progress:I

.field private final view:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/widget/SeekBarProgressChangeEvent;-><init>()V

    if-eqz p1, :cond_0

    .line 20
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->view:Landroid/widget/SeekBar;

    .line 21
    iput p2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->progress:I

    .line 22
    iput-boolean p3, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->fromUser:Z

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null view"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding2/widget/SeekBarProgressChangeEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 56
    check-cast p1, Lcom/jakewharton/rxbinding2/widget/SeekBarProgressChangeEvent;

    .line 57
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->view:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/SeekBarProgressChangeEvent;->view()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->progress:I

    .line 58
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/SeekBarProgressChangeEvent;->progress()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->fromUser:Z

    .line 59
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/SeekBarProgressChangeEvent;->fromUser()Z

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public fromUser()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->fromUser:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->view:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 70
    iget v2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->progress:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 72
    iget-boolean v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->fromUser:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public progress()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->progress:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBarProgressChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->view:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->fromUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/widget/SeekBar;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;->view:Landroid/widget/SeekBar;

    return-object v0
.end method
