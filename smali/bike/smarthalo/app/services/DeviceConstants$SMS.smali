.class public Lbike/smarthalo/app/services/DeviceConstants$SMS;
.super Lbike/smarthalo/app/services/DeviceConstants$Assistant;
.source "DeviceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/services/DeviceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMS"
.end annotation


# static fields
.field public static final FADE_IN:I = 0xc8

.field public static final FADE_OUT:I = 0x64

.field public static final OFF:I = 0xa

.field public static final ON:I = 0x32

.field public static final REPEAT:I = 0x1


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/services/DeviceConstants;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/services/DeviceConstants;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lbike/smarthalo/app/services/DeviceConstants$SMS;->this$0:Lbike/smarthalo/app/services/DeviceConstants;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/services/DeviceConstants$Assistant;-><init>(Lbike/smarthalo/app/services/DeviceConstants;)V

    return-void
.end method
