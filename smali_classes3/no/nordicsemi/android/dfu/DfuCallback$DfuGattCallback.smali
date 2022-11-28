.class public Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "DfuCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/dfu/DfuCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfuGattCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 0

    return-void
.end method
