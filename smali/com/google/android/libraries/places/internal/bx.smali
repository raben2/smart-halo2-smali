.class abstract Lcom/google/android/libraries/places/internal/bx;
.super Lcom/google/android/libraries/places/api/model/TimeOfWeek;
.source "PG"


# instance fields
.field private final a:Lcom/google/android/libraries/places/api/model/DayOfWeek;

.field private final b:Lcom/google/android/libraries/places/api/model/LocalTime;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;-><init>()V

    if-eqz p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bx;->a:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    if-eqz p2, :cond_0

    .line 7
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/bx;->b:Lcom/google/android/libraries/places/api/model/LocalTime;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null time"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null day"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 14
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 15
    check-cast p1, Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    .line 16
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bx;->a:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/api/model/DayOfWeek;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bx;->b:Lcom/google/android/libraries/places/api/model/LocalTime;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getTime()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v2
.end method

.method public getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bx;->a:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    return-object v0
.end method

.method public getTime()Lcom/google/android/libraries/places/api/model/LocalTime;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bx;->b:Lcom/google/android/libraries/places/api/model/LocalTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bx;->a:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/DayOfWeek;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 22
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bx;->b:Lcom/google/android/libraries/places/api/model/LocalTime;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bx;->a:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bx;->b:Lcom/google/android/libraries/places/api/model/LocalTime;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TimeOfWeek{day="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", time="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
