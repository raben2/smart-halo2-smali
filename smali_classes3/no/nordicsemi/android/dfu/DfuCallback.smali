.class interface abstract Lno/nordicsemi/android/dfu/DfuCallback;
.super Ljava/lang/Object;
.source "DfuCallback.java"

# interfaces
.implements Lno/nordicsemi/android/dfu/DfuController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;
    }
.end annotation


# virtual methods
.method public abstract getGattCallback()Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;
.end method

.method public abstract onBondStateChanged(I)V
.end method
