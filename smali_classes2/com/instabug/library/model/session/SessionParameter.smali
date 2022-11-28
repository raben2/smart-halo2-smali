.class public interface abstract annotation Lcom/instabug/library/model/session/SessionParameter;
.super Ljava/lang/Object;
.source "SessionParameter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final APP_TOKEN:Ljava/lang/String; = "application_token"

.field public static final APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final CRASH_REPORTING_ENABLED:Ljava/lang/String; = "crash_reporting_enabled"

.field public static final CUSTOM_ATTRIBUTES:Ljava/lang/String; = "custom_attributes"

.field public static final CUSTOM_ATTRIBUTES_KEYS:Ljava/lang/String; = "custom_attribute_keys"

.field public static final DEVICE:Ljava/lang/String; = "device"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final OS:Ljava/lang/String; = "os"

.field public static final SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field public static final STARTED_AT:Ljava/lang/String; = "started_at"

.field public static final USER_EMAIL:Ljava/lang/String; = "email"

.field public static final USER_EVENTS:Ljava/lang/String; = "user_events"

.field public static final USER_EVENTS_KEYS:Ljava/lang/String; = "user_event_keys"

.field public static final USER_NAME:Ljava/lang/String; = "name"

.field public static final UUID:Ljava/lang/String; = "uuid"
