.class public interface abstract annotation Lcom/instabug/library/model/session/SyncStatus;
.super Ljava/lang/Object;
.source "SyncStatus.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final OFFLINE:I = 0x0

.field public static final READY_FOR_SYNC:I = 0x1

.field public static final SYNCED_WITH_REMOTE:I = 0x2
