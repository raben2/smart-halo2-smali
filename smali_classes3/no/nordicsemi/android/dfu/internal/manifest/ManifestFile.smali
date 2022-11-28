.class public Lno/nordicsemi/android/dfu/internal/manifest/ManifestFile;
.super Ljava/lang/Object;
.source "ManifestFile.java"


# instance fields
.field private manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getManifest()Lno/nordicsemi/android/dfu/internal/manifest/Manifest;
    .locals 1

    .line 30
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/manifest/ManifestFile;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    return-object v0
.end method
