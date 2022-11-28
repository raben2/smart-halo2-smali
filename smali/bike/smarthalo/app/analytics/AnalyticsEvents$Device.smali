.class public Lbike/smarthalo/app/analytics/AnalyticsEvents$Device;
.super Ljava/lang/Object;
.source "AnalyticsEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Device"
.end annotation


# static fields
.field public static final DEVICE_CONNECTED:Ljava/lang/String; = "device_connected"

.field public static final DEVICE_CONNECTED_PARAM:Ljava/lang/String; = "connection_type"

.field public static final DEVICE_CONNECTED_VALUE_BACKGROUND:Ljava/lang/String; = "background"

.field public static final DEVICE_CONNECTED_VALUE_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final DEVICE_DISCONNECTED:Ljava/lang/String; = "device_disconnected"

.field public static final DEVICE_DISCONNECTED_CONNECTION_COUNT:Ljava/lang/String; = "connection_count"

.field public static final DEVICE_DISCONNECTED_DURATION:Ljava/lang/String; = "duration"

.field public static final LIGHT_STATE_CHANGED:Ljava/lang/String; = "light_state_changed"

.field public static final LIGHT_STATE_CHANGED_PARAM:Ljava/lang/String; = "light_state_changed_value"

.field public static final LIGHT_STATE_CHANGED_VALUE_AUTO_OFF:Ljava/lang/String; = "auto_off"

.field public static final LIGHT_STATE_CHANGED_VALUE_AUTO_ON:Ljava/lang/String; = "auto_on"

.field public static final LIGHT_STATE_CHANGED_VALUE_MANUAL_OFF:Ljava/lang/String; = "manual_off"

.field public static final LIGHT_STATE_CHANGED_VALUE_MANUAL_ON:Ljava/lang/String; = "manual_on"


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/analytics/AnalyticsEvents;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/analytics/AnalyticsEvents;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lbike/smarthalo/app/analytics/AnalyticsEvents$Device;->this$0:Lbike/smarthalo/app/analytics/AnalyticsEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
