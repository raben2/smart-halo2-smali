.class final Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;
.super Lcom/jakewharton/rxbinding2/widget/TextViewTextChangeEvent;
.source "AutoValue_TextViewTextChangeEvent.java"


# instance fields
.field private final before:I

.field private final count:I

.field private final start:I

.field private final text:Ljava/lang/CharSequence;

.field private final view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/widget/TextViewTextChangeEvent;-><init>()V

    if-eqz p1, :cond_1

    .line 24
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->view:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 28
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->text:Ljava/lang/CharSequence;

    .line 29
    iput p3, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->start:I

    .line 30
    iput p4, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->before:I

    .line 31
    iput p5, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->count:I

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null text"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null view"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public before()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->before:I

    return v0
.end method

.method public count()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->count:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 77
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding2/widget/TextViewTextChangeEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 78
    check-cast p1, Lcom/jakewharton/rxbinding2/widget/TextViewTextChangeEvent;

    .line 79
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->view:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/TextViewTextChangeEvent;->view()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->text:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/TextViewTextChangeEvent;->text()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->start:I

    .line 81
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/TextViewTextChangeEvent;->start()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->before:I

    .line 82
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/TextViewTextChangeEvent;->before()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->count:I

    .line 83
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/TextViewTextChangeEvent;->count()I

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

.method public hashCode()I
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->view:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 94
    iget-object v2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 96
    iget v2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->start:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 98
    iget v2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->before:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 100
    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->count:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public start()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->start:I

    return v0
.end method

.method public text()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextViewTextChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewTextChangeEvent;->view:Landroid/widget/TextView;

    return-object v0
.end method
