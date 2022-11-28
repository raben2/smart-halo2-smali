.class public abstract Lcom/google/android/datatransport/cct/a/zzr$zza;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/a/zzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(I)Lcom/google/android/datatransport/cct/a/zzr$zza;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/cct/a/zzr$zza;->zza(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/a/zzr$zza;

    move-result-object p1

    return-object p1
.end method

.method public abstract zza(J)Lcom/google/android/datatransport/cct/a/zzr$zza;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/datatransport/cct/a/zzp;)Lcom/google/android/datatransport/cct/a/zzr$zza;
    .param p1    # Lcom/google/android/datatransport/cct/a/zzp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/datatransport/cct/a/zzu;)Lcom/google/android/datatransport/cct/a/zzr$zza;
    .param p1    # Lcom/google/android/datatransport/cct/a/zzu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method abstract zza(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/a/zzr$zza;
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method abstract zza(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zzr$zza;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract zza(Ljava/util/List;)Lcom/google/android/datatransport/cct/a/zzr$zza;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/a/zzq;",
            ">;)",
            "Lcom/google/android/datatransport/cct/a/zzr$zza;"
        }
    .end annotation
.end method

.method public abstract zza()Lcom/google/android/datatransport/cct/a/zzr;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract zzb(J)Lcom/google/android/datatransport/cct/a/zzr$zza;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public zzb(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zzr$zza;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/cct/a/zzr$zza;->zza(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zzr$zza;

    move-result-object p1

    return-object p1
.end method
