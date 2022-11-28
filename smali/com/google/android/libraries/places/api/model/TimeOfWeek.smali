.class public abstract Lcom/google/android/libraries/places/api/model/TimeOfWeek;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .locals 1
    .param p0    # Lcom/google/android/libraries/places/api/model/DayOfWeek;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/libraries/places/api/model/LocalTime;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/cy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/cy;-><init>(Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTime()Lcom/google/android/libraries/places/api/model/LocalTime;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
