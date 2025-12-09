<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\Constituency;
use Illuminate\Auth\Access\HandlesAuthorization;

class ConstituencyPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:Constituency');
    }

    public function view(AuthUser $authUser, Constituency $constituency): bool
    {
        return $authUser->can('View:Constituency');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:Constituency');
    }

    public function update(AuthUser $authUser, Constituency $constituency): bool
    {
        return $authUser->can('Update:Constituency');
    }

    public function delete(AuthUser $authUser, Constituency $constituency): bool
    {
        return $authUser->can('Delete:Constituency');
    }

    public function restore(AuthUser $authUser, Constituency $constituency): bool
    {
        return $authUser->can('Restore:Constituency');
    }

    public function forceDelete(AuthUser $authUser, Constituency $constituency): bool
    {
        return $authUser->can('ForceDelete:Constituency');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:Constituency');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:Constituency');
    }

    public function replicate(AuthUser $authUser, Constituency $constituency): bool
    {
        return $authUser->can('Replicate:Constituency');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:Constituency');
    }

}