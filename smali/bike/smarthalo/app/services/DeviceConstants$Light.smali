.class public Lbike/smarthalo/app/services/DeviceConstants$Light;
.super Ljava/lang/Object;
.source "DeviceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/services/DeviceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Light"
.end annotation


# static fields
.field public static final LIGHT_HUE:I = 0x26

.field public static final LIGHT_LIGHTNESS:I = 0xf9

.field public static final LIGHT_SATURATION:I = 0xea


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/services/DeviceConstants;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/services/DeviceConstants;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lbike/smarthalo/app/services/DeviceConstants$Light;->this$0:Lbike/smarthalo/app/services/DeviceConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
