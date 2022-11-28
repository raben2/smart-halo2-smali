.class public abstract Lcom/google/android/datatransport/cct/a/zzq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/a/zzq$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zzq$zza;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/a/zzi$zza;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/cct/a/zzq$zza;->zza(Ljava/lang/String;)Lcom/google/android/datatransport/cct/a/zzq$zza;

    move-result-object p0

    return-object p0
.end method

.method public static zza([B)Lcom/google/android/datatransport/cct/a/zzq$zza;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/datatransport/cct/a/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/a/zzi$zza;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/cct/a/zzq$zza;->zza([B)Lcom/google/android/datatransport/cct/a/zzq$zza;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract zza()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzb()J
.end method

.method public abstract zzc()J
.end method

.method public abstract zzd()Lcom/google/android/datatransport/cct/a/zzt;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zze()[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzf()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzg()J
.end method
